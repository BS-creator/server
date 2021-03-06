CREATE OR REPLACE FUNCTION user_create
(
    _id                                 uuid,
    _name                               varchar(50),
    _email                              varchar(50),
    _email_verified                      bit,
    _master_password                    varchar(300),
    _master_password_hint               varchar(50),
    _culture                            varchar(10),
    _security_stamp                     varchar(50),
    _two_factor_providers               text,
    _two_factor_recovery_code           varchar(32),
    _equivalent_domains                 text,
    _excluded_global_equivalent_domains text,
    _account_revision_date              timestamptz,
    _key                                text,
    _public_key                         text,
    _private_key                        text,
    _premium                            bit,
    _premium_expiration_date            timestamptz,
    _renewal_reminder_date              timestamptz,
    _storage                            bigint,
    _max_storage_gb                     smallint,
    _gateway                            smallint,
    _gateway_customer_id                varchar(50),
    _gateway_subscription_id            varchar(50),
    _license_key                        varchar(100),
    _kdf                                smallint,
    _kdf_iterations                     int,
    _creation_date                      timestamptz,
    _revision_date                      timestamptz
)
RETURNS VOID
LANGUAGE 'plpgsql'
AS
$$
BEGIN
    INSERT INTO "user"
    (
        id,
        name,
        email,
        email_verified,
        master_password,
        master_password_hint,
        culture,
        security_stamp,
        two_factor_providers,
        two_factor_recovery_code,
        equivalent_domains,
        excluded_global_equivalent_domains,
        account_revision_date,
        key,
        public_key,
        private_key,
        premium,
        premium_expiration_date,
        renewal_reminder_date,
        storage,
        max_storage_gb,
        gateway,
        gateway_customer_id,
        gateway_subscription_id,
        license_key,
        kdf,
        kdf_iterations,
        creation_date,
        revision_date
    )
    VALUES
    (
        _id,
        _name,
        _email,
        _email_verified,
        _master_password,
        _master_password_hint,
        _culture,
        _security_stamp,
        _two_factor_providers,
        _two_factor_recovery_code,
        _equivalent_domains,
        _excluded_global_equivalent_domains,
        _account_revision_date,
        _key,
        _public_key,
        _private_key,
        _premium,
        _premium_expiration_date,
        _renewal_reminder_date,
        _storage,
        _max_storage_gb,
        _gateway,
        _gateway_customer_id,
        _gateway_subscription_id,
        _license_key,
        _kdf,
        _kdf_iterations,
        _creation_date,
        _revision_date
    );
END
$$
