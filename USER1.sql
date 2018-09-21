GRANT EXECUTE ON is_adherent_pkg TO ADMIN22_ROLE_PUBLIC


BEGIN
  ADMIN22.is_adherent_pkg.is_adherent_proc
END;
/
SELECT SYS_CONTEXT('votre_ctx','votre_var_ctx') FROM DUAL;
