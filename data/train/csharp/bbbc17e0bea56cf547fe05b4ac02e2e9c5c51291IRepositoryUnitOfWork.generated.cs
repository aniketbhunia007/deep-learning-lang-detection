﻿/*
    This code was automatically generated.
    Changes to this file may be lost if regeneration occurs.
*/

using System;
using EcoDomus.Data.Common.Repositories.Interfaces;
using EcoDomus.Data.Interfaces;

namespace EcoDomus.Data.Common.UnitOfWork
{
	/// <summary>
	/// The set of entity repositories
	/// </summary>
	public interface IRepositoryUnitOfWork : IUnitOfWork
	{
		DateTime GetCurrentTimestamp();
		DateTime GetUtcDateTime();

		IActionRepository ActionRepository { get; }
		IActionTypeUserTransportRepository ActionTypeUserTransportRepository { get; }
		IActivityLogRepository ActivityLogRepository { get; }
		IActivityLogStatusRepository ActivityLogStatusRepository { get; }
		IAggregatedActionRepository AggregatedActionRepository { get; }
		IAggregatorRepository AggregatorRepository { get; }
		IAlarmRuleRepository AlarmRuleRepository { get; }
		IAnalyzerRepository AnalyzerRepository { get; }
		IApplicationLanguageRepository ApplicationLanguageRepository { get; }
		IApprovalByRepository ApprovalByRepository { get; }
		IAssetAreaServedRepository AssetAreaServedRepository { get; }
		IAssetAttributeRepository AssetAttributeRepository { get; }
		IAssetAttributeValueRepository AssetAttributeValueRepository { get; }
		IAssetChangeLogRepository AssetChangeLogRepository { get; }
		IAssetRepository AssetRepository { get; }
		IAssetTypeRepository AssetTypeRepository { get; }
		IAttributeHyperlinkRepository AttributeHyperlinkRepository { get; }
		IAttributeTemplateClassificationLinkupRepository AttributeTemplateClassificationLinkupRepository { get; }
		IAttributeTemplateRepository AttributeTemplateRepository { get; }
		IAttributeTypeRepository AttributeTypeRepository { get; }
		IAttributeWorkOrderTableSequenceWithfilterRepository AttributeWorkOrderTableSequenceWithfilterRepository { get; }
		IBarcodeConfigDetailRepository BarcodeConfigDetailRepository { get; }
		IBarcodeEntityFieldTypeRepository BarcodeEntityFieldTypeRepository { get; }
		IBarcodeStructureRepository BarcodeStructureRepository { get; }
		IBarcodeTypeRepository BarcodeTypeRepository { get; }
		IBasAttributeEventDispatchRepository BasAttributeEventDispatchRepository { get; }
		IBasAttributeEventParametersRepository BasAttributeEventParametersRepository { get; }
		IBasAttributeEventRepository BasAttributeEventRepository { get; }
		IBasAttributeEventTypeRepository BasAttributeEventTypeRepository { get; }
		IBasAttributeHistoryRepository BasAttributeHistoryRepository { get; }
		IBasAttributeQualityRepository BasAttributeQualityRepository { get; }
		IBasRecordingTypeRepository BasRecordingTypeRepository { get; }
		IBasServerProtocolParametersRepository BasServerProtocolParametersRepository { get; }
		IBasServerProtocolRepository BasServerProtocolRepository { get; }
		IBasServerRepository BasServerRepository { get; }
		IBasWeatherHistoryRepository BasWeatherHistoryRepository { get; }
		IBasWeatherStationRepository BasWeatherStationRepository { get; }
		IBimQueryGISRepository BimQueryGISRepository { get; }
		IBimQueryParameterLinkupGisRepository BimQueryParameterLinkupGisRepository { get; }
		IChangeLogAffectedSystemsRepository ChangeLogAffectedSystemsRepository { get; }
		IChangeLogRepository ChangeLogRepository { get; }
		ICityRepository CityRepository { get; }
		IClientFacilityLinkupRepository ClientFacilityLinkupRepository { get; }
		IClientLicenseKeyRepository ClientLicenseKeyRepository { get; }
		IClientPasswordPolicySettingsRepository ClientPasswordPolicySettingsRepository { get; }
		IClientRepository ClientRepository { get; }
		IClientTableSequenceWithfilterRepository ClientTableSequenceWithfilterRepository { get; }
		ICobieqcErrorlistRepository CobieqcErrorlistRepository { get; }
		IComparisionUnitGisRepository ComparisionUnitGisRepository { get; }
		IContinentRepository ContinentRepository { get; }
		ICountryRepository CountryRepository { get; }
		ICustomHierarchyDataRepository CustomHierarchyDataRepository { get; }
		ICustomHierarchyItemRepository CustomHierarchyItemRepository { get; }
		ICustomHierarchyRelationRepository CustomHierarchyRelationRepository { get; }
		ICustomNamingConventionRepository CustomNamingConventionRepository { get; }
		IDataTypeRepository DataTypeRepository { get; }
		IDisciplineRepository DisciplineRepository { get; }
		IDisciplineStandardDetailLinkupRepository DisciplineStandardDetailLinkupRepository { get; }
		IDisplayUnitTypeRepository DisplayUnitTypeRepository { get; }
		IDocumentAttributeRepository DocumentAttributeRepository { get; }
		IDocumentAttributeValueRepository DocumentAttributeValueRepository { get; }
		IDocumentRepository DocumentRepository { get; }
		IDocumentTemplateTypeRepository DocumentTemplateTypeRepository { get; }
		IDocumentTypeRepository DocumentTypeRepository { get; }
		IDurationUnitRepository DurationUnitRepository { get; }
		IEcodomusClientProductReleaseDetailsRepository EcodomusClientProductReleaseDetailsRepository { get; }
		IEnergymodelAttributeHistoryRepository EnergymodelAttributeHistoryRepository { get; }
		IEnergymodelFacilityProjectSchedulesRepository EnergymodelFacilityProjectSchedulesRepository { get; }
		IEnergyModelingProjectEquipmentsLinkupRepository EnergyModelingProjectEquipmentsLinkupRepository { get; }
		IEnergyModelingProjectZonelistLinkupRepository EnergyModelingProjectZonelistLinkupRepository { get; }
		IEnergymodelObjectFieldsRepository EnergymodelObjectFieldsRepository { get; }
		IEnergymodelObjectsRepository EnergymodelObjectsRepository { get; }
		IEnergyModelProjectSimulationControlParameterRepository EnergyModelProjectSimulationControlParameterRepository { get; }
		IEnergymodelScheduleRepository EnergymodelScheduleRepository { get; }
		IEnergymodelScheduleValueRepository EnergymodelScheduleValueRepository { get; }
		IEnergymodelSimulationAASRepository EnergymodelSimulationAASRepository { get; }
		IEnergymodelSimulationAlgorithmRepository EnergymodelSimulationAlgorithmRepository { get; }
		IEnergymodelSimulationObjectsRepository EnergymodelSimulationObjectsRepository { get; }
		IEnergymodelSimulationObjectValuesRepository EnergymodelSimulationObjectValuesRepository { get; }
		IEnergymodelSimulationProfileRepository EnergymodelSimulationProfileRepository { get; }
		IEnergymodelZonelistRepository EnergymodelZonelistRepository { get; }
		IEnergymodelZonelistZoneLinkupRepository EnergymodelZonelistZoneLinkupRepository { get; }
		IEnergymodelZoneScheduleLinkupRepository EnergymodelZoneScheduleLinkupRepository { get; }
		IEntityColorLinkupRepository EntityColorLinkupRepository { get; }
		IEntityErrorDetailRepository EntityErrorDetailRepository { get; }
		IEntityGroupVirtualAttributeRepository EntityGroupVirtualAttributeRepository { get; }
		IEntityProfileAttributeRepository EntityProfileAttributeRepository { get; }
		IEntityRepository EntityRepository { get; }
		IExcelRequestRepository ExcelRequestRepository { get; }
		IExternalEntityLinkupRepository ExternalEntityLinkupRepository { get; }
		IExternalEntityRepository ExternalEntityRepository { get; }
		IExternalSystemAssetLinkupRepository ExternalSystemAssetLinkupRepository { get; }
		IExternalSystemConfigurationSettingRepository ExternalSystemConfigurationSettingRepository { get; }
		IExternalSystemDocumentLinkupRepository ExternalSystemDocumentLinkupRepository { get; }
		IExternalSystemEntityLinkupRepository ExternalSystemEntityLinkupRepository { get; }
		IExternalSystemEntityProfileAttributeLinkupRepository ExternalSystemEntityProfileAttributeLinkupRepository { get; }
		IExternalSystemEquipGroupOmniclassLinkupRepository ExternalSystemEquipGroupOmniclassLinkupRepository { get; }
		IExternalSystemEquipKeywordOmniclassLinkupRepository ExternalSystemEquipKeywordOmniclassLinkupRepository { get; }
		IExternalSystemEquipStatusOmniclassLinkupRepository ExternalSystemEquipStatusOmniclassLinkupRepository { get; }
		IExternalSystemEquipTypeOmniclassLinkupRepository ExternalSystemEquipTypeOmniclassLinkupRepository { get; }
		IExternalSystemFacilityLinkupRepository ExternalSystemFacilityLinkupRepository { get; }
		IExternalSystemFloorLinkupRepository ExternalSystemFloorLinkupRepository { get; }
		IExternalSystemFloorTypeLinkupRepository ExternalSystemFloorTypeLinkupRepository { get; }
		IExternalSystemMappingRepository ExternalSystemMappingRepository { get; }
		IExternalSystemMfgLinkupRepository ExternalSystemMfgLinkupRepository { get; }
		IExternalSystemOmniclassAssetLinkupRepository ExternalSystemOmniclassAssetLinkupRepository { get; }
		IExternalSystemOmniclassSpaceLinkupRepository ExternalSystemOmniclassSpaceLinkupRepository { get; }
		IExternalSystemPriorityLinkupRepository ExternalSystemPriorityLinkupRepository { get; }
		IExternalSystemRepository ExternalSystemRepository { get; }
		IExternalSystemSettingRepository ExternalSystemSettingRepository { get; }
		IExternalSystemSpaceLinkupRepository ExternalSystemSpaceLinkupRepository { get; }
		IExternalSystemSyncHistoryRepository ExternalSystemSyncHistoryRepository { get; }
		IExternalSystemSyncStatusRepository ExternalSystemSyncStatusRepository { get; }
		IExternalSystemSystemLinkupRepository ExternalSystemSystemLinkupRepository { get; }
		IExternalSystemTypeLinkupRepository ExternalSystemTypeLinkupRepository { get; }
		IExternalSystemUomLinkupRepository ExternalSystemUomLinkupRepository { get; }
		IExternalSystemUserLinkupRepository ExternalSystemUserLinkupRepository { get; }
		IExternalSystemWorkOrderCategoryLinkupRepository ExternalSystemWorkOrderCategoryLinkupRepository { get; }
		IExternalSystemWorkOrderLinkupRepository ExternalSystemWorkOrderLinkupRepository { get; }
		IExternalSystemWorkOrderLogLinkupRepository ExternalSystemWorkOrderLogLinkupRepository { get; }
		IExternalSystemWorkorderStatusLinkupRepository ExternalSystemWorkorderStatusLinkupRepository { get; }
		IExternalSystemZoneLinkupRepository ExternalSystemZoneLinkupRepository { get; }
		IExtrnalSystemConfigurationRepository ExtrnalSystemConfigurationRepository { get; }
		IFacilityAssetNameRepository FacilityAssetNameRepository { get; }
		IFacilityAttributeTemplateLinkupRepository FacilityAttributeTemplateLinkupRepository { get; }
		IFacilityBarcodeConfigRepository FacilityBarcodeConfigRepository { get; }
		IFacilityRepository FacilityRepository { get; }
		IFacilityRoleControlsRepository FacilityRoleControlsRepository { get; }
		IFacilityRoleDetailRepository FacilityRoleDetailRepository { get; }
		IFacilityRoleRepository FacilityRoleRepository { get; }
		IFileExportAttListRepository FileExportAttListRepository { get; }
		IFilterRepository FilterRepository { get; }
		IFloorTypeRepository FloorTypeRepository { get; }
		IGISLayerRepository GISLayerRepository { get; }
		IGisSymbolRepository GisSymbolRepository { get; }
		IGroupAttributeChoiceRepository GroupAttributeChoiceRepository { get; }
		IGroupNameRepository GroupNameRepository { get; }
		IHierarchyTableRepository HierarchyTableRepository { get; }
		IHierarchyTreeNodeAttributeRepository HierarchyTreeNodeAttributeRepository { get; }
		IHierarchyTreeNodeRepository HierarchyTreeNodeRepository { get; }
		IHierarchyTypeRepository HierarchyTypeRepository { get; }
		IHistoryAssetAttributeValueRepository HistoryAssetAttributeValueRepository { get; }
		IHistoryDocumentAttributeValueRepository HistoryDocumentAttributeValueRepository { get; }
		IHistoryLocationAttributeValueRepository HistoryLocationAttributeValueRepository { get; }
		IHistorySystemAttributeValueRepository HistorySystemAttributeValueRepository { get; }
		IHistoryTypeAttributeValueRepository HistoryTypeAttributeValueRepository { get; }
		IImpactRepository ImpactRepository { get; }
		IImportRequestExtsystemRepository ImportRequestExtsystemRepository { get; }
		IImportRequestRepository ImportRequestRepository { get; }
		IInspectionRepository InspectionRepository { get; }
		IIntermediateAssemblyRepository IntermediateAssemblyRepository { get; }
		IIntermediateAttributeRepository IntermediateAttributeRepository { get; }
		IIntermediateComponentRepository IntermediateComponentRepository { get; }
		IIntermediateConnectionRepository IntermediateConnectionRepository { get; }
		IIntermediateContactRepository IntermediateContactRepository { get; }
		IIntermediateFacilityRepository IntermediateFacilityRepository { get; }
		IIntermediateFloorRepository IntermediateFloorRepository { get; }
		IIntermediateImpactRepository IntermediateImpactRepository { get; }
		IIntermediateIssueRepository IntermediateIssueRepository { get; }
		IIntermediateJobRepository IntermediateJobRepository { get; }
		IIntermediateResourceRepository IntermediateResourceRepository { get; }
		IIntermediateSpaceRepository IntermediateSpaceRepository { get; }
		IIntermediateSpareRepository IntermediateSpareRepository { get; }
		IIntermediateSystemRepository IntermediateSystemRepository { get; }
		IIntermediateTypeRepository IntermediateTypeRepository { get; }
		IIntermediateZoneRepository IntermediateZoneRepository { get; }
		IJobCategoryRepository JobCategoryRepository { get; }
		IJobRepository JobRepository { get; }
		IJobTaskRepository JobTaskRepository { get; }
		IJobTaskResourceRepository JobTaskResourceRepository { get; }
		IJobTemplateRepository JobTemplateRepository { get; }
		ILanguageRepository LanguageRepository { get; }
		ILevelsRepository LevelsRepository { get; }
		ILicenseHelperRepository LicenseHelperRepository { get; }
		ILinkupJobDescriptionRepository LinkupJobDescriptionRepository { get; }
		ILinkupResourceLinkupJobDescriptionRepository LinkupResourceLinkupJobDescriptionRepository { get; }
		ILocationAttributeRepository LocationAttributeRepository { get; }
		ILocationAttributeValueRepository LocationAttributeValueRepository { get; }
		ILocationRepository LocationRepository { get; }
		IMapExtentRepository MapExtentRepository { get; }
		IMasterTableSequenceWithfilterRepository MasterTableSequenceWithfilterRepository { get; }
		IMessageRepository MessageRepository { get; }
		IModelTypeRepository ModelTypeRepository { get; }
		IModelViewerModelTypeLinkupRepository ModelViewerModelTypeLinkupRepository { get; }
		IModelViewerRepository ModelViewerRepository { get; }
		IModelViewerSourceAssetLinkupRepository ModelViewerSourceAssetLinkupRepository { get; }
		IModelViewerSourceLocationLinkupRepository ModelViewerSourceLocationLinkupRepository { get; }
		IModelViewerSourceRepository ModelViewerSourceRepository { get; }
		INavigationColorRepository NavigationColorRepository { get; }
		IOrganizationClientLinkupRepository OrganizationClientLinkupRepository { get; }
		IOrganizationDisciplineLinkupRepository OrganizationDisciplineLinkupRepository { get; }
		IOrganizationFacilityRepository OrganizationFacilityRepository { get; }
		IOrganizationHierarchyRepository OrganizationHierarchyRepository { get; }
		IOrganizationProjectRepository OrganizationProjectRepository { get; }
		IOrganizationRepository OrganizationRepository { get; }
		IOrganizationsClientRequestRepository OrganizationsClientRequestRepository { get; }
		IOrganizationStandardLinkupRepository OrganizationStandardLinkupRepository { get; }
		IOrganizationTypeRepository OrganizationTypeRepository { get; }
		IPagesRepository PagesRepository { get; }
		IParameterConditionComparisonLinkupGisRepository ParameterConditionComparisonLinkupGisRepository { get; }
		IParameterGisRepository ParameterGisRepository { get; }
		IParameterRepository ParameterRepository { get; }
		IPhaseEntityDetailRepository PhaseEntityDetailRepository { get; }
		IPhaseEntityFieldDetailRepository PhaseEntityFieldDetailRepository { get; }
		IPhaseRepository PhaseRepository { get; }
		IPriorityRepository PriorityRepository { get; }
		IProductAttributeRepository ProductAttributeRepository { get; }
		IProductDocumentRepository ProductDocumentRepository { get; }
		IProductRepository ProductRepository { get; }
		IProjectClassificationLinkupRepository ProjectClassificationLinkupRepository { get; }
		IProjectEntityFieldDetailRepository ProjectEntityFieldDetailRepository { get; }
		IProjectFacilityRepository ProjectFacilityRepository { get; }
		IProjectRepository ProjectRepository { get; }
		IProjectRoleDetailRepository ProjectRoleDetailRepository { get; }
		IProjectRoleRepository ProjectRoleRepository { get; }
		IQcErrorRepository QcErrorRepository { get; }
		IRecentUserDataRepository RecentUserDataRepository { get; }
		IReportFilterPredicateRepository ReportFilterPredicateRepository { get; }
		IReportFilterRepository ReportFilterRepository { get; }
		IRequiredAttributeGroupRepository RequiredAttributeGroupRepository { get; }
		IRequiredAttributeRepository RequiredAttributeRepository { get; }
		IRequiredDocumentRepository RequiredDocumentRepository { get; }
		IRequiredGroupAttributeRepository RequiredGroupAttributeRepository { get; }
		IResourceCategoryRepository ResourceCategoryRepository { get; }
		IResourceRepository ResourceRepository { get; }
		ISearchValueRepository SearchValueRepository { get; }
		ISettingPagesRepository SettingPagesRepository { get; }
		ISettingsMaximoSiteRepository SettingsMaximoSiteRepository { get; }
		ISheetNameRepository SheetNameRepository { get; }
		ISimulationAssetScheduleLinkupRepository SimulationAssetScheduleLinkupRepository { get; }
		ISimulationFileFieldValuesRepository SimulationFileFieldValuesRepository { get; }
		ISimulationFilesRepository SimulationFilesRepository { get; }
		ISimulationScheduleLimitRepository SimulationScheduleLimitRepository { get; }
		ISimulationSchedulesRepository SimulationSchedulesRepository { get; }
		ISpaceAssetLinkupRepository SpaceAssetLinkupRepository { get; }
		ISpaceChangeLogRepository SpaceChangeLogRepository { get; }
		ISparesCategoryRepository SparesCategoryRepository { get; }
		ISparesRepository SparesRepository { get; }
		IStageRepository StageRepository { get; }
		IStandardDetail1Repository StandardDetail1Repository { get; }
		IStandardDetailRepository StandardDetailRepository { get; }
		IStandardHierarchyDataRepository StandardHierarchyDataRepository { get; }
		IStandardRepository StandardRepository { get; }
		IStateRepository StateRepository { get; }
		IStatusRepository StatusRepository { get; }
		ISubAssemblyRepository SubAssemblyRepository { get; }
		ISubSystemRepository SubSystemRepository { get; }
		ISyncFailedDetailRepository SyncFailedDetailRepository { get; }
		ISyncHistoryEntityDetailRepository SyncHistoryEntityDetailRepository { get; }
		ISyncScopeDescRepository SyncScopeDescRepository { get; }
		ISystemAssetLinkupRepository SystemAssetLinkupRepository { get; }
		ISystemAttributeRepository SystemAttributeRepository { get; }
		ISystemAttributeValueRepository SystemAttributeValueRepository { get; }
		ISystemFacilityLinkupRepository SystemFacilityLinkupRepository { get; }
		ISystemRepository SystemRepository { get; }
		ISystemRoleRepository SystemRoleRepository { get; }
		ITrainingMaterialRepository TrainingMaterialRepository { get; }
		ITransportRepository TransportRepository { get; }
		ITvHotlinkRepository TvHotlinkRepository { get; }
		ITvScanworldRepository TvScanworldRepository { get; }
		ITvSitemapRepository TvSitemapRepository { get; }
		ITvViewpointRepository TvViewpointRepository { get; }
		ITvViewpointTreeRepository TvViewpointTreeRepository { get; }
		ITypeAttributeRepository TypeAttributeRepository { get; }
		ITypeAttributeValueRepository TypeAttributeValueRepository { get; }
		ITypeFacilityLinkupRepository TypeFacilityLinkupRepository { get; }
		ITypeRepository TypeRepository { get; }
		IUnitOfMeasurementRepository UnitOfMeasurementRepository { get; }
		IUnitTypeRepository UnitTypeRepository { get; }
		IUploadedFileRepository UploadedFileRepository { get; }
		IUserClientLinkupRepository UserClientLinkupRepository { get; }
		IUserDefaultModelViewerRepository UserDefaultModelViewerRepository { get; }
		IUserFacilityRepository UserFacilityRepository { get; }
		IUserGroupRepository UserGroupRepository { get; }
		IUserPasswordHistoryRepository UserPasswordHistoryRepository { get; }
		IUserProjectRepository UserProjectRepository { get; }
		IUserProjectRoleRepository UserProjectRoleRepository { get; }
		IUserPushNotificationTokenRepository UserPushNotificationTokenRepository { get; }
		IUserRepository UserRepository { get; }
		IUserSessionRepository UserSessionRepository { get; }
		IUserSettingRepository UserSettingRepository { get; }
		IUserTextRepository UserTextRepository { get; }
		IUserTransportLogRepository UserTransportLogRepository { get; }
		IUserTransportRepository UserTransportRepository { get; }
		IValueUnitGisRepository ValueUnitGisRepository { get; }
		IViewerRepository ViewerRepository { get; }
		IViewerUserLinkupRepository ViewerUserLinkupRepository { get; }
		IViewRepository ViewRepository { get; }
		IWorkOrderCategoryRepository WorkOrderCategoryRepository { get; }
		IWorkOrderChanceRepository WorkOrderChanceRepository { get; }
		IWorkOrderFacilityLinkupRepository WorkOrderFacilityLinkupRepository { get; }
		IWorkOrderImpactRepository WorkOrderImpactRepository { get; }
		IWorkOrderLocationLinkupRepository WorkOrderLocationLinkupRepository { get; }
		IWorkOrderLogRepository WorkOrderLogRepository { get; }
		IWorkOrderOwnerLinkupRepository WorkOrderOwnerLinkupRepository { get; }
		IWorkOrderRepository WorkOrderRepository { get; }
		IWorkOrderRiskRepository WorkOrderRiskRepository { get; }
		IZoneSpaceLinkupRepository ZoneSpaceLinkupRepository { get; }
	}
}
