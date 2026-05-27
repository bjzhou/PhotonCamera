.class public final Ldhs;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhk;

.field public static final b:Ldhk;

.field public static final c:Ldhj;

.field public static final d:Ldhj;

.field public static final e:Ldhj;

.field public static final f:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.launch_vfe"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhs;->c:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.launch_vfe.decay_mills"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhs;->a:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.launch_vfe.start_radius_px"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhs;->b:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.launch_vfe.start_scale"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhs;->d:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.launch_vfe.start_fade"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhs;->e:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.launch_vfe.downscale"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhs;->f:Ldhj;

    return-void
.end method
