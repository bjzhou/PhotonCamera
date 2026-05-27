.class public final Lohf;
.super Ljava/lang/Object;

# interfaces
.implements Lohe;


# static fields
.field public static final a:Llqb;

.field public static final b:Llqb;

.field public static final c:Llqb;

.field public static final d:Llqb;

.field public static final e:Llqb;

.field public static final f:Llqb;

.field public static final g:Llqb;

.field public static final h:Llqb;

.field public static final i:Llqb;

.field public static final j:Llqb;

.field public static final k:Llqb;

.field public static final l:Llqb;

.field public static final m:Llqb;

.field public static final n:Llqb;

.field public static final o:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "com.google.android.libraries.consentverifier"

    sget-object v8, Lmza;->a:Lmza;

    const-string v0, "CollectionBasisVerifierFeatures__enable_all_features"

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v7

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->a:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_google_signature_check"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->b:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_load_failure_stack_trace"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->c:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_log_sampling"

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->d:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_logging"

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->e:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_logging_field_not_annotated"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->f:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_logging_uc_never_collect"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->g:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_logging_using_cel"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->h:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_logging_using_cel_to_all_apps_beyond_gms_core"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->i:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_use_proto_data_store"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->j:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__enable_using_log_verifier_result"

    invoke-static/range {v0 .. v5}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->k:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__failure_log_cooldown_period_ms"

    const-wide/32 v1, 0x5265c00

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v7

    move-object v4, v8

    invoke-static/range {v0 .. v6}, Llqf;->b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->l:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__log_sampling_rate"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v6}, Llqf;->a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->m:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__max_stack_trace_size"

    const-wide/16 v1, 0x3e8

    invoke-static/range {v0 .. v6}, Llqf;->b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->n:Llqb;

    const-string v0, "CollectionBasisVerifierFeatures__min_app_version_code_to_log"

    const-wide/16 v1, -0x1

    invoke-static/range {v0 .. v6}, Llqf;->b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohf;->o:Llqb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    sget-object v0, Lohf;->m:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    sget-object v0, Lohf;->l:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    sget-object v0, Lohf;->n:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    sget-object v0, Lohf;->o:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Lohf;->a:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    sget-object v0, Lohf;->b:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    sget-object v0, Lohf;->c:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    sget-object v0, Lohf;->d:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    sget-object v0, Lohf;->e:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    sget-object v0, Lohf;->f:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    sget-object v0, Lohf;->g:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    sget-object v0, Lohf;->h:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    sget-object v0, Lohf;->i:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    sget-object v0, Lohf;->j:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    sget-object v0, Lohf;->k:Llqb;

    invoke-virtual {v0}, Llqb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
