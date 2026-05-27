.class public final Lhsu;
.super Ljava/lang/Object;

# interfaces
.implements Lchb;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lchj;

.field public final c:Landroid/content/res/Resources;

.field public d:Z

.field private final e:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/captureindicator/wirer/FilmstripDataCaptureIndicatorUpdater"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhsu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Lchj;Landroid/content/res/Resources;Lgzm;Ljuh;Ldhi;Lcdi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsu;->e:Ljava/util/function/Consumer;

    iput-object p2, p0, Lhsu;->b:Lchj;

    iput-object p3, p0, Lhsu;->c:Landroid/content/res/Resources;

    sget-object p1, Ldho;->bL:Ldhj;

    invoke-interface {p6, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgzd;->at:Lgzr;

    invoke-interface {p4, p1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object p1

    invoke-virtual {p7}, Lcdi;->i()Ljuf;

    move-result-object p3

    new-instance p4, Lglh;

    const/16 p6, 0xc

    invoke-direct {p4, p0, p2, p6}, Lglh;-><init>(Lhsu;Lchj;I)V

    invoke-interface {p1, p4, p5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lhsu;->e:Ljava/util/function/Consumer;

    new-instance v1, Lfeo;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lfeo;-><init>(Lhsu;I)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
