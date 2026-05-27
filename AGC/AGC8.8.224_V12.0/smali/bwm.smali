.class public abstract Lbwm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbwm;

.field public static final b:Lbwm;

.field public static final c:Lbwm;

.field public static final d:Lbwm;

.field public static final e:Lbwm;

.field public static final f:Lbqe;

.field static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbwk;

    invoke-direct {v0}, Lbwk;-><init>()V

    sput-object v0, Lbwm;->a:Lbwm;

    new-instance v0, Lbwi;

    invoke-direct {v0}, Lbwi;-><init>()V

    sput-object v0, Lbwm;->b:Lbwm;

    new-instance v0, Lbwj;

    invoke-direct {v0}, Lbwj;-><init>()V

    sput-object v0, Lbwm;->c:Lbwm;

    new-instance v1, Lbwl;

    invoke-direct {v1}, Lbwl;-><init>()V

    sput-object v1, Lbwm;->d:Lbwm;

    sput-object v0, Lbwm;->e:Lbwm;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, Lbqe;->c(Ljava/lang/String;Ljava/lang/Object;)Lbqe;

    move-result-object v0

    sput-object v0, Lbwm;->f:Lbqe;

    const/4 v0, 0x1

    sput-boolean v0, Lbwm;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)F
.end method

.method public abstract b(IIII)I
.end method
