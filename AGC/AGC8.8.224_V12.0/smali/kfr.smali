.class public final Lkfr;
.super Ljava/lang/Object;

# interfaces
.implements Lkdz;


# static fields
.field static final a:Ljava/lang/Integer;

.field public static final b:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public i:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public j:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lkfr;->a:Ljava/lang/Integer;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    sput-object v0, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkfr;->c:Ljava/lang/Integer;

    iput-object p2, p0, Lkfr;->d:Ljava/lang/Integer;

    iput-object p3, p0, Lkfr;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lkfr;->f:Ljava/lang/Integer;

    iput-object p5, p0, Lkfr;->g:Ljava/lang/Integer;

    iput-object p6, p0, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p7, p0, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p8, p0, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method static b()Lkfr;
    .locals 10

    new-instance v9, Lkfr;

    sget-object v5, Lkfr;->a:Ljava/lang/Integer;

    sget-object v8, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v0, v9

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    move-object v6, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v8}, Lkfr;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-object v9
.end method


# virtual methods
.method public final a()Lkea;
    .locals 1

    new-instance v0, Lkfq;

    invoke-direct {v0, p0}, Lkfq;-><init>(Lkfr;)V

    return-object v0
.end method
