.class public final Ldid;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhj;

.field public static final b:Ldhj;

.field public static final c:Ldhj;

.field public static final d:Ldhj;

.field public static final e:Ldhj;

.field public static final f:Ldhj;

.field public static final g:Ldhj;

.field public static final h:Ldhj;

.field public static final i:Ldhj;

.field public static final j:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "simple_metering_bright_bmm_threshold_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->a:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "simple_metering_bright_bmm_threshold_back"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->b:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "simple_metering_dark_bmm_threshold_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->c:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "simple_metering_dark_bmm_threshold_back"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->d:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "smart_metering_bright_logsb_threshold_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->e:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "smart_metering_bright_logsb_threshold_back"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->f:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "smart_metering_dark_logsb_threshold_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->g:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "smart_metering_dark_logsb_threshold_back"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->h:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "smart_metering_dark_pib_threshold_front"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->i:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "smart_metering_dark_pib_threshold_back"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldid;->j:Ldhj;

    return-void
.end method
