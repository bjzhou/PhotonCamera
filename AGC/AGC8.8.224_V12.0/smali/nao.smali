.class public final Lnao;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnbc;

.field public static final b:Lnbc;

.field public static final c:Lnbc;

.field public static final d:Lnbc;

.field public static final e:Lnbc;

.field public static final f:Lnbc;

.field public static final g:Lnbc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "cause"

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lnbc;->c(Ljava/lang/String;Ljava/lang/Class;)Lnbc;

    move-result-object v0

    sput-object v0, Lnao;->a:Lnbc;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "ratelimit_count"

    invoke-static {v1, v0}, Lnbc;->c(Ljava/lang/String;Ljava/lang/Class;)Lnbc;

    move-result-object v0

    sput-object v0, Lnao;->b:Lnbc;

    const-class v0, Lnaw;

    const-string v1, "ratelimit_period"

    invoke-static {v1, v0}, Lnbc;->c(Ljava/lang/String;Ljava/lang/Class;)Lnbc;

    move-result-object v0

    sput-object v0, Lnao;->c:Lnbc;

    new-instance v0, Lnam;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lnam;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnao;->d:Lnbc;

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "forced"

    invoke-static {v1, v0}, Lnbc;->c(Ljava/lang/String;Ljava/lang/Class;)Lnbc;

    move-result-object v0

    sput-object v0, Lnao;->e:Lnbc;

    new-instance v0, Lnan;

    const-class v1, Lndl;

    invoke-direct {v0, v1}, Lnan;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnao;->f:Lnbc;

    const-class v0, Lnbe;

    const-string v1, "stack_size"

    invoke-static {v1, v0}, Lnbc;->c(Ljava/lang/String;Ljava/lang/Class;)Lnbc;

    move-result-object v0

    sput-object v0, Lnao;->g:Lnbc;

    return-void
.end method
