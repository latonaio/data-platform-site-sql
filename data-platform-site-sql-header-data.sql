CREATE TABLE `data_platform_site_header_data`
(
  `Site`                             int(16) NOT NULL,
  `SiteType`                         varchar(4) NOT NULL,
  `SiteOwner`                        int(12) NOT NULL,
  `SiteOwnerBusinessPartnerRole`     varchar(40) NOT NULL,
  `PersonResponsible`                varchar(40) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityStartTime`                time NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `ValidityEndTime`                  time NOT NULL,
  `Description`                      varchar(60) NOT NULL,
  `LongText`                         varchar(1000) NOT NULL,
  `Introduction`                     varchar(200) DEFAULT NULL,
  `Project`                          int(16) DEFAULT NULL,
  `WBSElement`                       int(8) DEFAULT NULL,
  `Tag1`                             varchar(40) DEFAULT NULL,
  `Tag2`                             varchar(40) DEFAULT NULL,
  `Tag3`                             varchar(40) DEFAULT NULL,
  `Tag4`                             varchar(40) DEFAULT NULL,
  `PointConsumptionType`             varchar(4) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Site`),

    CONSTRAINT `DPFMSiteHeaderDataSiteType_fk` FOREIGN KEY (`SiteType`) REFERENCES `data_platform_site_type_site_type_data` (`SiteType`),
    CONSTRAINT `DPFMSiteHeaderDataSiteOwner_fk` FOREIGN KEY (`SiteOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMSiteHeaderDataSiteOwnerBPRole_fk` FOREIGN KEY (`SiteOwnerBusinessPartnerRole`) REFERENCES `data_platform_bp_role_bp_role_data` (`BusinessPartnerRole`),
    CONSTRAINT `DPFMSiteHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMSiteHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMSiteHeaderDataPointConsumptionType_fk` FOREIGN KEY (`PointConsumptionType`) REFERENCES `data_platform_point_consumption_type_point_consumption_type_data` (`PointConsumptionType`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;