package broker_registrar 
/*
* File Generated by enaml generator
* !!! Please do not edit this file !!!
*/
type Broker struct {

	/*Port - Descr: Port for the service broker Default: 443
*/
	Port interface{} `yaml:"port,omitempty"`

	/*AuthPassword - Descr: Basic Auth password for the service broker Default: <nil>
*/
	AuthPassword interface{} `yaml:"auth_password,omitempty"`

	/*Services - Descr: List of services the broker provides Default: <nil>
*/
	Services interface{} `yaml:"services,omitempty"`

	/*AuthUsername - Descr: Basic Auth username for the service broker Default: <nil>
*/
	AuthUsername interface{} `yaml:"auth_username,omitempty"`

	/*Protocol - Descr: Protocol (http/https) provided to the Cloud Controller when registering/deregistering the broker Default: https
*/
	Protocol interface{} `yaml:"protocol,omitempty"`

}