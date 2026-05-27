.class public final Ldqx;
.super Ljava/lang/Object;


# static fields
.field public static f:[B

.field public static g:[F

.field public static h:[F


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldqx;->d:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    new-instance v0, Ljvk;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldqx;->b:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgzw;Ldja;Ldhi;Lfme;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lgzm;Ljwb;Ljwb;Ljwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbin;

    invoke-direct {v0}, Lbin;-><init>()V

    iput-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldqx;->b:Ljava/lang/Object;

    const-string v0, ".ttf"

    iput-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lbll;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    return-void

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b01b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ldqx;->d:Ljava/lang/Object;

    const v0, 0x7f0b01b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f0b01bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    const v0, 0x7f0b01b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    const v0, 0x7f0b01b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    const v0, 0x7f0b01b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ldqx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lasf;Lasz;Lasq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/InterleavedImageU8;Ldrb;Lcom/google/googlex/gcam/InterleavedImageU8;Lhjc;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldbf;Ldna;Ldhi;Lklx;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;Lkli;Lily;Lemr;Loiw;Lgdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p6, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {p2}, Lkli;->M()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Lkli;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Ldho;->ag:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lily;->h()Lkli;

    move-result-object p1

    invoke-interface {p1}, Lkli;->i()Lkll;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    return-void

    :cond_0
    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_0
.end method

.method public constructor <init>(Lhkt;Lmqp;Lhjc;[BLgxn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljpw;IILemq;Ljad;[B[B[B[B)V
    .locals 9

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ligo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Ligo;-><init>(Ljpw;II[B[B[B)V

    iput-object v8, v0, Ldqx;->e:Ljava/lang/Object;

    mul-int v1, p2, p3

    new-array v2, v1, [B

    sput-object v2, Ldqx;->f:[B

    const/16 v2, 0x9

    new-array v2, v2, [F

    sput-object v2, Ldqx;->g:[F

    const/16 v2, 0x240

    new-array v2, v2, [F

    sput-object v2, Ldqx;->h:[F

    move-object v2, p4

    iput-object v2, v0, Ldqx;->c:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Ldqx;->d:Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Ldqx;->a:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Ldqx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljuf;Lecd;Ljvs;Ljwb;Lebl;Lkaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->c:Ljava/lang/Object;

    const-string p2, "HdrPFlashDecider"

    invoke-interface {p6, p2}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    new-instance p2, Ldei;

    const/16 p3, 0x13

    invoke-direct {p2, p4, p3}, Ldei;-><init>(Ljwb;I)V

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public constructor <init>(Ljwb;Ljwb;Lgzw;Ldja;Lgzm;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llgf;Lui;Ldqx;[B[B[B)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->b:Ljava/lang/Object;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p4, 0x6

    invoke-static {p1, p2, p4}, Lolp;->P(III)Loss;

    move-result-object p1

    iput-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Ldqx;

    iget-object p1, p3, Ldqx;->a:Ljava/lang/Object;

    new-instance p2, Lopt;

    const-string p3, "CXCP-VirtualCameraManager"

    invoke-direct {p2, p3}, Lopt;-><init>(Ljava/lang/String;)V

    new-instance p3, Lum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lum;-><init>(Ldqx;Loku;[B[B[B)V

    const/4 p4, 0x2

    invoke-static {p1, p2, p3, p4}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void
.end method

.method public constructor <init>(Llzz;Llyz;Landroidx/wear/ambient/AmbientMode$AmbientController;Llyh;Lkrn;[B[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;Lbkb;Lfgg;Lcvr;[B[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->e:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Logd;Lgue;Lnsb;Lnsc;Lkbc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p5, p0, Ldqx;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Ldqx;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Ldqx;->c:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Ldqx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldqx;->a:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Ldqx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Ldqx;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Ldqx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lopu;Lopq;Lopq;Lolz;Lolz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldqx;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldqx;->e:Ljava/lang/Object;

    new-instance p1, Lpo;

    const/4 p2, 0x3

    invoke-direct {p1, p4, p2}, Lpo;-><init>(Lolz;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    new-instance p1, Lpo;

    const/4 p2, 0x2

    invoke-direct {p1, p5, p2}, Lpo;-><init>(Lolz;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Ldqx;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object v0

    iput-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object v0

    iput-object v0, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Ldqx;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lklv;)Ljwu;
    .locals 4

    sget-object v0, Lklv;->a:Lklv;

    if-ne p1, v0, :cond_0

    sget-object v0, Ldgu;->f:Ldhk;

    goto :goto_0

    :cond_0
    sget-object v0, Ldgu;->g:Ldhk;

    :goto_0
    iget-object v1, p0, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Ldhj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ADB flag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    sget-object p1, Ljwu;->l:Ljwu;

    return-object p1

    :sswitch_1
    sget-object p1, Ljwu;->j:Ljwu;

    return-object p1

    :sswitch_2
    sget-object p1, Ljwu;->k:Ljwu;

    return-object p1

    :sswitch_3
    sget-object p1, Ljwu;->i:Ljwu;

    return-object p1

    :sswitch_4
    sget-object p1, Ljwu;->g:Ljwu;

    return-object p1

    :sswitch_5
    sget-object p1, Ljwu;->f:Ljwu;

    return-object p1

    :sswitch_6
    sget-object p1, Ljwu;->d:Ljwu;

    return-object p1

    :sswitch_7
    sget-object p1, Ljwu;->c:Ljwu;

    return-object p1

    :sswitch_8
    sget-object p1, Ljwu;->b:Ljwu;

    return-object p1

    :cond_1
    iget-object v0, p0, Ldqx;->d:Ljava/lang/Object;

    iget-object v1, p0, Ldqx;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast v0, Ldja;

    invoke-virtual {v0, v1, p1}, Ldja;->m(Landroid/content/Context;Lklv;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast p1, Ljwi;

    invoke-virtual {p1}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgyw;

    sget-object v0, Lgyw;->a:Lgyw;

    invoke-virtual {p1, v0}, Lgyw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Lfme;

    invoke-virtual {p1}, Lfme;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Lfme;

    invoke-virtual {p1}, Lfme;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljwu;->l:Ljwu;

    goto :goto_2

    :cond_3
    sget-object p1, Ljwu;->k:Ljwu;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Lfme;

    invoke-virtual {p1}, Lfme;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljwu;->j:Ljwu;

    goto :goto_2

    :cond_5
    sget-object p1, Ljwu;->i:Ljwu;

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_8
        0xf0 -> :sswitch_7
        0x120 -> :sswitch_6
        0x1e0 -> :sswitch_5
        0x2d0 -> :sswitch_4
        0x438 -> :sswitch_3
        0x870 -> :sswitch_2
        0x1a602 -> :sswitch_1
        0x34be2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final d(Ljava/lang/String;Lvy;Lopu;Loku;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Luq;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Luq;

    iget v1, v0, Luq;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Luq;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Luq;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Luq;-><init>(Ldqx;Loku;[B[B[B)V

    :goto_0
    iget-object p4, v0, Luq;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Luq;->b:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p3, v0, Luq;->c:Lopu;

    iget-object p1, v0, Luq;->e:Ldqx;

    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p4, p0, Ldqx;->c:Ljava/lang/Object;

    check-cast p4, Llgf;

    invoke-virtual {p4}, Llgf;->b()Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Ldqx;->d:Ljava/lang/Object;

    iput-object p0, v0, Luq;->e:Ldqx;

    iput-object p3, v0, Luq;->c:Lopu;

    iput v3, v0, Luq;->b:I

    check-cast p4, Lui;

    invoke-virtual {p4, p1, p2, v0}, Lui;->a(Ljava/lang/String;Lvy;Loku;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_1

    return-object v1

    :cond_1
    move-object p1, p0

    :goto_1
    check-cast p4, Luc;

    iget-object p2, p4, Luc;->a:Lsj;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    new-instance p1, Lup;

    iget-object p2, p4, Luc;->b:Lqy;

    invoke-direct {p1, v0, p2, v3, v0}, Lup;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lqy;I[B)V

    return-object p1

    :cond_2
    new-instance p4, Lup;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Ldqx;->a:Ljava/lang/Object;

    invoke-direct {v1, p2, p3, p1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Lsj;Lopu;Lotj;)V

    const/4 p1, 0x2

    invoke-direct {p4, v1, v0, p1, v0}, Lup;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lqy;I[B)V

    return-object p4

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing camera permissions!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/util/List;Loku;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lur;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lur;

    iget v1, v0, Lur;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lur;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lur;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lur;-><init>(Ldqx;Loku;[B[B[B)V

    :goto_0
    iget-object p2, v0, Lur;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lur;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lur;->d:Ljava/util/ArrayList;

    iget-object v2, v0, Lur;->c:Ljava/util/ArrayList;

    iget-object v3, v0, Lur;->f:Ldqx;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    iget-object p1, v0, Lur;->d:Ljava/util/ArrayList;

    iget-object v2, v0, Lur;->c:Ljava/util/ArrayList;

    iget-object v3, v0, Lur;->f:Ldqx;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    iput-object p0, v0, Lur;->f:Ldqx;

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lur;->c:Ljava/util/ArrayList;

    iput-object v2, v0, Lur;->d:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput v2, v0, Lur;->b:I

    invoke-interface {p2, v0}, Loss;->b(Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_1

    move-object v3, p0

    move-object v2, p1

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_2

    :cond_1
    return-object v1

    :cond_2
    move-object v3, p0

    :goto_2
    iget-object p2, v3, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {p2}, Loss;->k()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v3, Ldqx;->a:Ljava/lang/Object;

    iput-object v3, v0, Lur;->f:Ldqx;

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lur;->c:Ljava/util/ArrayList;

    iput-object v2, v0, Lur;->d:Ljava/util/ArrayList;

    const/4 v2, 0x2

    iput v2, v0, Lur;->b:I

    invoke-interface {p2, v0}, Loss;->b(Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_3

    move-object v2, p1

    :goto_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldqx;->b:Ljava/lang/Object;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized g(JLgxy;)Lfkc;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "Current session exists; didn\'t clear last one?"

    invoke-static {v0, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const-string v2, "Trying to create a tone map session with no microvideo API"

    invoke-static {v0, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0, p3}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v0

    new-instance v10, Lfkb;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v9}, Lfkb;-><init>(Ldqx;JLgxy;[B[B[B)V

    new-instance p1, Lfkc;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v4, v10

    invoke-direct/range {v2 .. v7}, Lfkc;-><init>(Ldqx;Lkad;[B[B[B)V

    invoke-virtual {v0, p1}, Leeb;->a(Lecm;)V

    invoke-virtual {v0, p1}, Leeb;->c(Lecn;)V

    invoke-virtual {v0, p1}, Leeb;->f(Lecw;)V

    iget-object p2, p0, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(Lkeb;)Lnsx;
    .locals 10

    iget-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    const-string v1, "createHdrPlusFrame"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v0

    new-instance v1, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v1}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    new-instance v2, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-direct {v2}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    iget-object v3, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast v3, Lgue;

    invoke-virtual {v3, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v3

    invoke-virtual {v3}, Lgli;->e()Lkpb;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lkpb;->c()I

    move-result v6

    if-lez v6, :cond_4

    invoke-interface {v4}, Lkpb;->b()I

    move-result v6

    if-gtz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Ldqx;->c:Ljava/lang/Object;

    check-cast v6, Lnsb;

    invoke-virtual {v6, v4}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v6

    if-eqz v0, :cond_3

    iget-object v1, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lecd;

    invoke-interface {v1, v0}, Lecd;->i(Lkou;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v1

    iget-object v2, p0, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lecd;

    invoke-virtual {v3}, Lgli;->a()Lkfj;

    move-result-object v3

    invoke-interface {v3}, Lkfj;->c()Lkll;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lecd;->h(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameMetadata;->c()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-gtz v9, :cond_2

    invoke-interface {v4}, Lkpb;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lkeb;->close()V

    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-object v5

    :cond_2
    :try_start_1
    iget-object v2, p0, Ldqx;->d:Ljava/lang/Object;

    check-cast v2, Lnsc;

    invoke-virtual {v2, v0}, Lnsc;->o(Lkou;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_1
    new-instance v0, Leli;

    const/16 v3, 0x11

    invoke-direct {v0, v4, v3}, Leli;-><init>(Lkpb;I)V

    invoke-static {v6, v1, v2, v0}, Lnsx;->a(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/SpatialGainMap;Ljava/lang/Runnable;)Lnsx;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Lkeb;->close()V

    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-object v0

    :cond_4
    :goto_2
    if-eqz v4, :cond_1

    :try_start_2
    invoke-interface {v4}, Lkpb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lkeb;->close()V

    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast v0, Loon;

    iget v0, v0, Loon;->b:I

    iget-object v1, p0, Ldqx;->b:Ljava/lang/Object;

    check-cast v1, Loon;

    iget v1, v1, Loon;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final j()Loxp;
    .locals 2

    iget-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Loop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldqx;->k()Loxp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final k()Loxp;
    .locals 5

    :cond_0
    iget-object v0, p0, Ldqx;->b:Ljava/lang/Object;

    check-cast v0, Loon;

    iget v0, v0, Loon;->b:I

    iget-object v1, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast v1, Loon;

    iget v1, v1, Loon;->b:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    iget-object v3, p0, Ldqx;->b:Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    check-cast v3, Loon;

    invoke-virtual {v3, v0, v4}, Loon;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldqx;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxp;

    if-eqz v0, :cond_0

    iget-object v1, v0, Loxp;->h:Loxq;

    iget v1, v1, Loxq;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ldqx;->d:Ljava/lang/Object;

    check-cast v1, Loon;

    invoke-virtual {v1}, Loon;->d()V

    sget-boolean v1, Lopw;->a:Z

    :cond_2
    return-object v0
.end method

.method public final l(Loxp;)Loxp;
    .locals 3

    iget-object v0, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Loop;

    invoke-virtual {v0, p1}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loxp;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Loxp;->h:Loxq;

    iget v1, v1, Loxq;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ldqx;->d:Ljava/lang/Object;

    check-cast v1, Loon;

    invoke-virtual {v1}, Loon;->b()I

    :cond_1
    invoke-virtual {p0}, Ldqx;->i()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast v1, Loon;

    iget v1, v1, Loon;->b:I

    and-int/2addr v1, v2

    :goto_0
    iget-object v2, p0, Ldqx;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ldqx;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast p1, Loon;

    invoke-virtual {p1}, Loon;->b()I

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public final m(Lmbi;Ljava/lang/String;Loku;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    instance-of v1, v0, Lmbp;

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmbp;

    iget v2, v1, Lmbp;->c:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lmbp;->c:I

    move-object v11, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lmbp;

    invoke-direct {v1, v8, v0, v10, v10}, Lmbp;-><init>(Ldqx;Loku;[B[B)V

    move-object v11, v1

    :goto_0
    iget-object v0, v11, Lmbp;->b:Ljava/lang/Object;

    sget-object v12, Lolc;->a:Lolc;

    iget v1, v11, Lmbp;->c:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v11, Lmbp;->a:Ljava/lang/Object;

    check-cast v1, Lmbi;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, v11, Lmbp;->e:Llwq;

    iget-object v2, v11, Lmbp;->d:Lmbi;

    iget-object v3, v11, Lmbp;->a:Ljava/lang/Object;

    check-cast v3, Ldqx;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, v9, Lmbi;->a:Llyf;

    iget-object v0, v9, Lmbi;->b:Llwq;

    new-instance v4, Lmbj;

    iget-wide v5, v0, Llwq;->f:J

    invoke-direct {v4, v2, v0, v5, v6}, Lmbj;-><init>(Llyf;Llwq;J)V

    iget-object v13, v0, Llwq;->j:Llwz;

    const/4 v14, 0x0

    iget-object v1, v8, Ldqx;->d:Ljava/lang/Object;

    invoke-static {v1}, Lllj;->e(Lkrn;)Lnyy;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Llvk;->g:Llvk;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0xb

    invoke-static/range {v13 .. v20}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v1

    const/16 v3, 0x57f

    move-object/from16 v5, p2

    invoke-static {v0, v10, v5, v1, v3}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object v13

    iget-object v14, v8, Ldqx;->b:Ljava/lang/Object;

    new-instance v15, Lmbq;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v3, v13

    invoke-direct/range {v0 .. v7}, Lmbq;-><init>(Ldqx;Llyf;Llwq;Lmbj;Loku;[B[B)V

    iput-object v8, v11, Lmbp;->a:Ljava/lang/Object;

    iput-object v9, v11, Lmbp;->d:Lmbi;

    iput-object v13, v11, Lmbp;->e:Llwq;

    const/4 v0, 0x1

    iput v0, v11, Lmbp;->c:I

    check-cast v14, Llzz;

    invoke-static {v14, v9, v15, v11}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v12, :cond_1

    move-object v3, v8

    move-object v2, v9

    move-object v1, v13

    :goto_1
    check-cast v0, Llyf;

    const/4 v4, 0x4

    invoke-static {v2, v0, v1, v4}, Lmbi;->a(Lmbi;Llyf;Llwq;I)Lmbi;

    move-result-object v1

    iget-object v0, v3, Ldqx;->b:Ljava/lang/Object;

    sget-object v2, Lodt;->f:Lodt;

    iput-object v1, v11, Lmbp;->a:Ljava/lang/Object;

    iput-object v10, v11, Lmbp;->d:Lmbi;

    iput-object v10, v11, Lmbp;->e:Llwq;

    const/4 v3, 0x2

    iput v3, v11, Lmbp;->c:I

    check-cast v0, Llzz;

    invoke-static {v0, v1, v2, v10, v11}, Llyh;->b(Llzz;Lmbi;Lodt;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v12, :cond_1

    :goto_2
    return-object v1

    :cond_1
    return-object v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Lmbi;Loku;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lmbr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmbr;

    iget v2, v0, Lmbr;->c:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Lmbr;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmbr;

    invoke-direct {v0, p0, p2, v1, v1}, Lmbr;-><init>(Ldqx;Loku;[B[B)V

    :goto_0
    iget-object p2, v0, Lmbr;->b:Ljava/lang/Object;

    sget-object v2, Lolc;->a:Lolc;

    iget v3, v0, Lmbr;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmbr;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Lmbr;->e:Ljava/lang/IllegalStateException;

    iget-object v3, v0, Lmbr;->d:Lmbi;

    iget-object v4, v0, Lmbr;->a:Ljava/lang/Object;

    check-cast v4, Ldqx;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v3

    move-object v5, v4

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v3, "UploadResourceComplete for attachment"

    invoke-direct {p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldqx;->b:Ljava/lang/Object;

    sget-object v4, Lodt;->B:Lodt;

    iput-object p0, v0, Lmbr;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmbr;->d:Lmbi;

    iput-object p2, v0, Lmbr;->e:Ljava/lang/IllegalStateException;

    const/4 v5, 0x1

    iput v5, v0, Lmbr;->c:I

    check-cast v3, Llzz;

    invoke-static {v3, p1, v4, p2, v0}, Llyh;->b(Llzz;Lmbi;Lodt;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    move-object v5, p0

    :goto_1
    iget-object v3, v5, Ldqx;->b:Ljava/lang/Object;

    new-instance v10, Lmbs;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lmbs;-><init>(Ldqx;Lmbi;Loku;[B[B)V

    iput-object p2, v0, Lmbr;->a:Ljava/lang/Object;

    iput-object v1, v0, Lmbr;->d:Lmbi;

    iput-object v1, v0, Lmbr;->e:Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    iput v1, v0, Lmbr;->c:I

    check-cast v3, Llzz;

    invoke-static {v3, p1, v10, v0}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object v2

    :cond_1
    move-object p1, p2

    :goto_2
    throw p1

    :cond_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Lmbi;Lmdf;Loku;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lmbt;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lmbt;

    iget v6, v4, Lmbt;->c:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v4, Lmbt;->c:I

    goto :goto_0

    :cond_0
    new-instance v4, Lmbt;

    invoke-direct {v4, v0, v3, v5, v5}, Lmbt;-><init>(Ldqx;Loku;[B[B)V

    :goto_0
    iget-object v3, v4, Lmbt;->b:Ljava/lang/Object;

    sget-object v6, Lolc;->a:Lolc;

    iget v7, v4, Lmbt;->c:I

    packed-switch v7, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v4, Lmbt;->a:Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object v1, v4, Lmbt;->a:Ljava/lang/Object;

    :goto_1
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, v4, Lmbt;->h:Lods;

    iget-object v2, v4, Lmbt;->g:Lodt;

    iget-object v7, v4, Lmbt;->f:Llwq;

    iget-object v8, v4, Lmbt;->e:Llyf;

    iget-object v9, v4, Lmbt;->d:Lmbi;

    iget-object v10, v4, Lmbt;->a:Ljava/lang/Object;

    check-cast v10, Ldqx;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v13, v8

    move-object v12, v10

    move-object v2, v1

    move-object v10, v7

    move-object v1, v9

    goto :goto_2

    :pswitch_3
    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v8, v1, Lmbi;->a:Llyf;

    iget-object v7, v1, Lmbi;->b:Llwq;

    iget-object v3, v2, Lmdf;->a:Lodt;

    iget-object v2, v2, Lmdf;->b:Ljava/lang/Throwable;

    iget-object v9, v0, Ldqx;->b:Ljava/lang/Object;

    iput-object v0, v4, Lmbt;->a:Ljava/lang/Object;

    iput-object v1, v4, Lmbt;->d:Lmbi;

    iput-object v8, v4, Lmbt;->e:Llyf;

    iput-object v7, v4, Lmbt;->f:Llwq;

    iput-object v3, v4, Lmbt;->g:Lodt;

    move-object v10, v2

    check-cast v10, Lods;

    iput-object v10, v4, Lmbt;->h:Lods;

    const/4 v10, 0x1

    iput v10, v4, Lmbt;->c:I

    check-cast v9, Llzz;

    invoke-static {v9, v1, v3, v2, v4}, Llyh;->b(Llzz;Lmbi;Lodt;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v6, :cond_2

    move-object v12, v0

    move-object v10, v7

    move-object v13, v8

    :goto_2
    sget-object v7, Lodt;->a:Lodt;

    invoke-virtual {v3}, Lodt;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    iget-object v3, v12, Ldqx;->b:Ljava/lang/Object;

    new-instance v7, Lmbw;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lmbw;-><init>(Ldqx;Llyf;Loku;[B[B)V

    iput-object v2, v4, Lmbt;->a:Ljava/lang/Object;

    iput-object v5, v4, Lmbt;->d:Lmbi;

    iput-object v5, v4, Lmbt;->e:Llyf;

    iput-object v5, v4, Lmbt;->f:Llwq;

    iput-object v5, v4, Lmbt;->g:Lodt;

    iput-object v5, v4, Lmbt;->h:Lods;

    const/4 v5, 0x4

    iput v5, v4, Lmbt;->c:I

    check-cast v3, Llzz;

    invoke-static {v3, v1, v7, v4}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_1

    return-object v6

    :pswitch_4
    iget-object v14, v10, Llwq;->j:Llwz;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Llvk;->c:Llvk;

    const-wide/16 v19, 0x0

    const/16 v21, 0xf

    invoke-static/range {v14 .. v21}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v3

    const/16 v7, 0x5bf

    invoke-static {v10, v5, v5, v3, v7}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object v14

    new-instance v15, Lmbj;

    const-wide/16 v7, 0x0

    invoke-direct {v15, v13, v10, v7, v8}, Lmbj;-><init>(Llyf;Llwq;J)V

    iget-object v3, v12, Ldqx;->b:Ljava/lang/Object;

    new-instance v7, Lmbu;

    const/16 v18, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v18}, Lmbu;-><init>(Ldqx;Llyf;Llwq;Lmbj;Loku;[B[B)V

    iput-object v2, v4, Lmbt;->a:Ljava/lang/Object;

    iput-object v5, v4, Lmbt;->d:Lmbi;

    iput-object v5, v4, Lmbt;->e:Llyf;

    iput-object v5, v4, Lmbt;->f:Llwq;

    iput-object v5, v4, Lmbt;->g:Lodt;

    iput-object v5, v4, Lmbt;->h:Lods;

    const/4 v5, 0x2

    iput v5, v4, Lmbt;->c:I

    check-cast v3, Llzz;

    invoke-static {v3, v1, v7, v4}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_1

    return-object v6

    :pswitch_5
    iget-object v3, v12, Ldqx;->b:Ljava/lang/Object;

    new-instance v14, Lmbv;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v14

    move-object v8, v12

    move-object v9, v13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lmbv;-><init>(Ldqx;Llyf;Llwq;Loku;[B[B)V

    iput-object v2, v4, Lmbt;->a:Ljava/lang/Object;

    iput-object v5, v4, Lmbt;->d:Lmbi;

    iput-object v5, v4, Lmbt;->e:Llyf;

    iput-object v5, v4, Lmbt;->f:Llwq;

    iput-object v5, v4, Lmbt;->g:Lodt;

    iput-object v5, v4, Lmbt;->h:Lods;

    const/4 v5, 0x3

    iput v5, v4, Lmbt;->c:I

    check-cast v3, Llzz;

    invoke-static {v3, v1, v14, v4}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_1

    return-object v6

    :cond_1
    move-object v1, v2

    :goto_3
    throw v1

    :cond_2
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final p(Lmbi;Ljava/lang/String;Loku;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lmbx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lmbx;

    iget v2, v0, Lmbx;->b:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Lmbx;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmbx;

    invoke-direct {v0, p0, p3, v1, v1}, Lmbx;-><init>(Ldqx;Loku;[B[B)V

    :goto_0
    iget-object p3, v0, Lmbx;->a:Ljava/lang/Object;

    sget-object v2, Lolc;->a:Lolc;

    iget v3, v0, Lmbx;->b:I

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmbx;->d:Llwq;

    iget-object p2, v0, Lmbx;->c:Lmbi;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p3, p1, Lmbi;->b:Llwq;

    iget-object p3, p3, Llwq;->g:Ljava/lang/String;

    invoke-static {p2, p3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p1, Lmbi;->b:Llwq;

    const/16 v3, 0x7bf

    invoke-static {p3, p2, v1, v1, v3}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object p2

    iget-object p3, p0, Ldqx;->b:Ljava/lang/Object;

    new-instance v3, Lmby;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lmby;-><init>(Ldqx;Llwq;Loku;[B[B)V

    iput-object p1, v0, Lmbx;->c:Lmbi;

    iput-object p2, v0, Lmbx;->d:Llwq;

    const/4 v4, 0x1

    iput v4, v0, Lmbx;->b:I

    check-cast p3, Llzz;

    invoke-static {p3, p1, v3, v0}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v2, :cond_1

    :goto_1
    const/4 p3, 0x5

    invoke-static {p1, v1, p2, p3}, Lmbi;->a(Lmbi;Llyf;Llwq;I)Lmbi;

    move-result-object p1

    goto :goto_2

    :cond_1
    return-object v2

    :cond_2
    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Lmbi;JLoku;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p4

    instance-of v1, v0, Lmbz;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmbz;

    iget v3, v1, Lmbz;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v1, Lmbz;->b:I

    move-object v10, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lmbz;

    invoke-direct {v1, v8, v0, v2, v2}, Lmbz;-><init>(Ldqx;Loku;[B[B)V

    move-object v10, v1

    :goto_0
    iget-object v0, v10, Lmbz;->a:Ljava/lang/Object;

    sget-object v11, Lolc;->a:Lolc;

    iget v1, v10, Lmbz;->b:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v10, Lmbz;->d:Llwq;

    iget-object v2, v10, Lmbz;->c:Lmbi;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v3, v9, Lmbi;->a:Llyf;

    iget-object v0, v9, Lmbi;->b:Llwq;

    new-instance v4, Lmbj;

    move-wide/from16 v5, p2

    invoke-direct {v4, v3, v0, v5, v6}, Lmbj;-><init>(Llyf;Llwq;J)V

    iget-object v12, v0, Llwq;->j:Llwz;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-wide v5, v4, Lmbj;->a:D

    const/16 v19, 0x1f

    move-wide/from16 v17, v5

    invoke-static/range {v12 .. v19}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v1

    const/16 v5, 0x5ff

    invoke-static {v0, v2, v2, v1, v5}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object v12

    iget-object v13, v8, Ldqx;->b:Ljava/lang/Object;

    new-instance v14, Lmca;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lmca;-><init>(Ldqx;Llyf;Llwq;Lmbj;Loku;[B[B)V

    iput-object v9, v10, Lmbz;->c:Lmbi;

    iput-object v12, v10, Lmbz;->d:Llwq;

    const/4 v0, 0x1

    iput v0, v10, Lmbz;->b:I

    check-cast v13, Llzz;

    invoke-static {v13, v9, v14, v10}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v11, :cond_1

    move-object v2, v9

    move-object v1, v12

    :goto_1
    check-cast v0, Llyf;

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Lmbi;->a(Lmbi;Llyf;Llwq;I)Lmbi;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Llzy;Llyf;Llwq;Loku;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    instance-of v3, v2, Lmcd;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lmcd;

    iget v5, v3, Lmcd;->c:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v3, Lmcd;->c:I

    goto :goto_0

    :cond_0
    new-instance v3, Lmcd;

    invoke-direct {v3, v1, v2, v4, v4}, Lmcd;-><init>(Ldqx;Loku;[B[B)V

    :goto_0
    iget-object v2, v3, Lmcd;->b:Ljava/lang/Object;

    sget-object v5, Lolc;->a:Lolc;

    iget v6, v3, Lmcd;->c:I

    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Lmcd;->a:Ljava/lang/Object;

    check-cast v0, Lonk;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, v3, Lmcd;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v6, v3, Lmcd;->j:Ljava/util/List;

    iget-object v7, v3, Lmcd;->i:Llzz;

    iget-object v8, v3, Lmcd;->h:Ljava/util/List;

    iget-object v9, v3, Lmcd;->g:Lodt;

    iget-object v0, v3, Lmcd;->f:Llwq;

    iget-object v10, v3, Lmcd;->e:Llyf;

    iget-object v11, v3, Lmcd;->d:Llzy;

    iget-object v12, v3, Lmcd;->a:Ljava/lang/Object;

    check-cast v12, Ldqx;

    :try_start_0
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :pswitch_3
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v13, v0, Llwq;->j:Llwz;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Llvk;->d:Llvk;

    const-wide/16 v18, 0x0

    const/16 v20, 0x2f

    invoke-static/range {v13 .. v20}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v2

    const/16 v6, 0x5ff

    invoke-static {v0, v4, v4, v2, v6}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object v2

    iget-object v7, v1, Ldqx;->b:Ljava/lang/Object;

    sget-object v9, Lodt;->s:Lodt;

    invoke-static/range {p3 .. p3}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Lljr;->ae(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :try_start_1
    iget-object v0, v1, Ldqx;->a:Ljava/lang/Object;

    iput-object v1, v3, Lmcd;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v10, p1

    :try_start_2
    iput-object v10, v3, Lmcd;->d:Llzy;

    move-object/from16 v11, p2

    iput-object v11, v3, Lmcd;->e:Llyf;

    iput-object v2, v3, Lmcd;->f:Llwq;

    iput-object v9, v3, Lmcd;->g:Lodt;

    iput-object v8, v3, Lmcd;->h:Ljava/util/List;

    move-object v12, v7

    check-cast v12, Llzz;

    iput-object v12, v3, Lmcd;->i:Llzz;

    iput-object v6, v3, Lmcd;->j:Ljava/util/List;

    const/4 v12, 0x1

    iput v12, v3, Lmcd;->c:I

    check-cast v0, Llyz;

    invoke-virtual {v0, v2, v3}, Llyz;->g(Llwq;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v5, :cond_1

    move-object v14, v1

    move-object v0, v2

    move-object/from16 v21, v11

    move-object v11, v10

    move-object/from16 v10, v21

    :goto_1
    iget-object v2, v14, Ldqx;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v2, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->s(Llwq;)Ljava/io/File;

    move-result-object v2

    new-instance v6, Lmbi;

    invoke-direct {v6, v10, v0, v11}, Lmbi;-><init>(Llyf;Llwq;Llzy;)V

    iget-object v7, v14, Ldqx;->e:Ljava/lang/Object;

    iget-object v0, v0, Llwq;->g:Ljava/lang/String;

    new-instance v8, Lodk;

    invoke-direct {v8, v2}, Lodk;-><init>(Ljava/io/File;)V

    check-cast v7, Llyh;

    const-string v2, "https://mobile-vision-f250-uploads.googleapis.com/upload/blob"

    invoke-virtual {v7, v8, v0, v2}, Llyh;->d(Lodj;Ljava/lang/String;Ljava/lang/String;)Lott;

    move-result-object v0

    new-instance v2, Lonk;

    invoke-direct {v2}, Lonk;-><init>()V

    iput-object v6, v2, Lonk;->a:Ljava/lang/Object;

    new-instance v6, Lmcc;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v12 .. v17}, Lmcc;-><init>(Lonk;Ldqx;I[B[B)V

    iput-object v2, v3, Lmcd;->a:Ljava/lang/Object;

    iput-object v4, v3, Lmcd;->d:Llzy;

    iput-object v4, v3, Lmcd;->e:Llyf;

    iput-object v4, v3, Lmcd;->f:Llwq;

    iput-object v4, v3, Lmcd;->g:Lodt;

    iput-object v4, v3, Lmcd;->h:Ljava/util/List;

    iput-object v4, v3, Lmcd;->i:Llzz;

    iput-object v4, v3, Lmcd;->j:Ljava/util/List;

    const/4 v4, 0x3

    iput v4, v3, Lmcd;->c:I

    check-cast v0, Lovi;

    invoke-static {v0, v6, v3}, Lovi;->d(Lovi;Lotu;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v5, :cond_1

    move-object v0, v2

    :goto_2
    iget-object v0, v0, Lonk;->a:Ljava/lang/Object;

    check-cast v0, Lmbi;

    iget-object v0, v0, Lmbi;->b:Llwq;

    return-object v0

    :cond_1
    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    :goto_3
    move-object v11, v10

    :goto_4
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_2

    invoke-virtual {v11, v6, v8, v9, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v2

    iput-object v0, v3, Lmcd;->a:Ljava/lang/Object;

    iput-object v4, v3, Lmcd;->d:Llzy;

    iput-object v4, v3, Lmcd;->e:Llyf;

    iput-object v4, v3, Lmcd;->f:Llwq;

    iput-object v4, v3, Lmcd;->g:Lodt;

    iput-object v4, v3, Lmcd;->h:Ljava/util/List;

    iput-object v4, v3, Lmcd;->i:Llzz;

    iput-object v4, v3, Lmcd;->j:Ljava/util/List;

    const/4 v4, 0x2

    iput v4, v3, Lmcd;->c:I

    check-cast v7, Llzz;

    invoke-virtual {v7, v2, v3}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_2

    return-object v5

    :cond_2
    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lhlv;)Lhln;
    .locals 8

    iget-wide v0, p1, Lhlv;->b:J

    iget-object v2, p0, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "full"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const-wide/32 v4, 0x1e8480

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x3567e0

    :goto_0
    iget-object v2, p0, Ldqx;->b:Ljava/lang/Object;

    sget-object v6, Lgzd;->ax:Lgzs;

    invoke-interface {v2, v6}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v6, 0x419ce0

    add-long/2addr v4, v6

    goto :goto_1

    :cond_1
    :goto_1
    iget-object v2, p0, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v6, 0xc65d40

    add-long/2addr v4, v6

    goto :goto_2

    :cond_2
    :goto_2
    div-long/2addr v0, v4

    iget-wide v4, p1, Lhlv;->b:J

    iget-object p1, p0, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Ljwi;

    invoke-virtual {p1}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lgyw;->a:Lgyw;

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast p1, Ldja;

    iget-object p1, p1, Ldja;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgyr;

    sget-object v2, Lgyr;->a:Lgyr;

    const/high16 v6, 0x41b00000    # 22.0f

    if-eq p1, v2, :cond_4

    sget-object v2, Lgyr;->c:Lgyr;

    if-ne p1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v6, 0x42040000    # 33.0f

    goto :goto_3

    :cond_4
    goto :goto_3

    :cond_5
    iget-object p1, p0, Ldqx;->e:Ljava/lang/Object;

    check-cast p1, Ldja;

    iget-object p1, p1, Ldja;->c:Ljava/lang/Object;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgyr;

    sget-object v2, Lgyr;->d:Lgyr;

    if-ne p1, v2, :cond_6

    const/high16 v6, 0x42900000    # 72.0f

    goto :goto_3

    :cond_6
    const/high16 v6, 0x42400000    # 48.0f

    :goto_3
    iget-object p1, p0, Ldqx;->b:Ljava/lang/Object;

    sget-object v2, Lgzd;->B:Lgzr;

    invoke-interface {p1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x3f666666    # 0.9f

    mul-float v6, v6, p1

    :cond_7
    long-to-int p1, v0

    const v0, 0x49742400    # 1000000.0f

    mul-float v6, v6, v0

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr v6, v0

    float-to-int v0, v6

    int-to-long v0, v0

    div-long/2addr v4, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    const/16 v0, 0x32

    const/4 v1, 0x0

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    long-to-int v2, v4

    const/4 v4, 0x6

    if-ge v2, v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    new-instance v1, Lhln;

    invoke-direct {v1, p1, v2, v0, v3}, Lhln;-><init>(IIZZ)V

    return-object v1
.end method

.method public final t(Ldqx;Z)J
    .locals 6

    :cond_0
    iget-object v0, p1, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Loxp;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    if-eqz p2, :cond_3

    iget-object v3, v0, Loxp;->h:Loxq;

    iget v3, v3, Loxq;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    return-wide v1

    :cond_3
    :goto_0
    sget-wide v1, Loxs;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Loxp;->g:J

    sub-long/2addr v1, v3

    sget-wide v3, Loxs;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    sub-long/2addr v3, v1

    return-wide v3

    :cond_4
    iget-object v1, p1, Ldqx;->a:Ljava/lang/Object;

    check-cast v1, Loop;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ldqx;->l(Loxp;)Loxp;

    const-wide/16 p1, -0x1

    return-wide p1
.end method
