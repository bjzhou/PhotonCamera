.class public final Ldhd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhj;

.field public static final b:Ldhj;

.field public static final c:Ldhj;

.field public static final d:Ldhj;

.field public static final e:Ldhj;

.field public static final f:Ldhj;

.field public static final g:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->a:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.post_face_meta"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_yuv"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_darwinn"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->b:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_gpu"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->c:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_tm"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->d:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_save_original"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_debug"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_smart_emb"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->e:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_db_af"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->f:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.face_deblur_model_asset_name"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldhd;->g:Ldhj;

    return-void
.end method

.method public static a(Ldhm;)V
    .locals 2

    sget-object v0, Ldhd;->a:Ldhj;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->b:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->c:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->d:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->e:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->f:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhd;->g:Ldhj;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    return-void
.end method
