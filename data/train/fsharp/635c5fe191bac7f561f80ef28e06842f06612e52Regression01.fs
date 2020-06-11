// #Conformance #DeclarationElements #Events 
#light

// FSB 942, mutable variable escapes its scope when used with an event handler
// Verify that you can hook up event handlers to mutable variables

// Sanity check events.
type Action =
    | Squeeze
    | Poke
    | LeaveAlone

// Sanity check events can be defined, fired, and all subscribers notified.
type SqueekyToy() =
    let squeekEvent = new Event<_>()
    let triggerSqueekEvent = squeekEvent.Trigger
    
    // This event fire whenever the squeeky toy squeeks
    member this.Squeek with get () = squeekEvent
    
    member this.ApplyAction act = 
        match act with
        | Squeeze    -> triggerSqueekEvent(act)
        | Poke       -> triggerSqueekEvent(act)
        | LeaveAlone -> ()


// Test events
let test() =
    // Nothing wired up...
    let mutable pinkSqueekyToy = new SqueekyToy()

    // Hook up event handler, so when the event fires
    // m_eventFlag is set to whatever the param was.
    let m_eventFlag1 = ref None
    let eventHandler1 = new Handler<Action> (fun (_ : obj)  (arg : Action) -> m_eventFlag1 := Some(arg))
    pinkSqueekyToy.Squeek.Publish.AddHandler(eventHandler1)

    // Poke the toy, which should cause it to squeek
    m_eventFlag1 := None
    pinkSqueekyToy.ApplyAction(Poke)
    if !m_eventFlag1 <> Some(Poke) then exit 1

    // Now add another event handler
    let m_eventFlag2 = ref None
    let eventHandler2 = new Handler<Action> (fun _ act -> m_eventFlag2 := Some(act))
    pinkSqueekyToy.Squeek.Publish.AddHandler(eventHandler2)

    // Now squeeze the toy, verifying that both event handlers
    // were called.
    m_eventFlag1 := None
    m_eventFlag2 := None

    pinkSqueekyToy.ApplyAction(Squeeze)
    if !m_eventFlag1 <> Some(Squeeze) then exit 1
    if !m_eventFlag2 <> Some(Squeeze) then exit 1
     
    // Remove one of the event handlers
    pinkSqueekyToy.Squeek.Publish.RemoveHandler(eventHandler1)
    m_eventFlag1 := None
    m_eventFlag2 := None

    // Event handler 1 should not have fired.
    pinkSqueekyToy.ApplyAction(Squeeze)
    if !m_eventFlag1 <> None then exit 1
    if !m_eventFlag2 <> Some(Squeeze) then exit 1

    // Remove the last event handler
    pinkSqueekyToy.Squeek.Publish.RemoveHandler(eventHandler2)
    m_eventFlag1 := None
    m_eventFlag2 := None

    // Event handler 1 should not have fired.
    pinkSqueekyToy.ApplyAction(Squeeze)
    if !m_eventFlag1 <> None then exit 1
    if !m_eventFlag2 <> None then exit 1

// Run our test
test()

exit 0
