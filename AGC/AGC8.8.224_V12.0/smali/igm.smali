.class public final Ligm;
.super Ligk;


# static fields
.field private static final a:Lnak;

.field private static final b:Lkaf;

.field private static final c:Lkaf;


# instance fields
.field private final d:Lklj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/ui/viewfinder/LowResViewfinderSizeSelector"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ligm;->a:Lnak;

    const/16 v0, 0x400

    const/16 v1, 0x300

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ligm;->b:Lkaf;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ligm;->c:Lkaf;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Ldhi;Lklj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Ligk;-><init>(Landroid/view/WindowManager;Ldhi;Ljava/lang/String;)V

    iput-object p3, p0, Ligm;->d:Lklj;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Ljzr;Lklv;Lika;Lkll;)Lkaf;
    .locals 4

    sget-object v0, Lika;->b:Lika;

    if-ne p4, v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljzr;->a()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ligk;->a(Ljava/util/List;D)Lkaf;

    move-result-object v0

    iget-object v1, p0, Ligm;->d:Lklj;

    invoke-interface {v1, p5}, Lklj;->a(Lkll;)Lkli;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v1, v0, v2}, Lgdd;->a(Lkli;Lkaf;I)Lgdd;

    move-result-object v0

    iget-object v0, v0, Lgdd;->b:Lkaf;

    sget-object v1, Ljzr;->b:Ljzr;

    invoke-static {v0}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljzr;->m(Ljzr;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ligm;->c:Lkaf;

    goto :goto_0

    :cond_0
    sget-object v1, Ljzr;->a:Ljzr;

    invoke-static {v0}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljzr;->m(Ljzr;)Z

    move-result v0

    invoke-static {v0}, Lmoz;->e(Z)V

    sget-object v0, Ligm;->b:Lkaf;

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lgdc; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ligm;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "selectViewfinderSize: cameraId=%s"

    const/16 v3, 0x1095

    invoke-static {v1, v2, p5, v3, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :cond_1
    invoke-super/range {p0 .. p5}, Ligk;->b(Ljava/util/List;Ljzr;Lklv;Lika;Lkll;)Lkaf;

    move-result-object p1

    return-object p1
.end method
