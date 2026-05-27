.class public final Lekn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lejw;

.field public c:Z

.field public final d:Z

.field public final e:D

.field public final f:D

.field public final g:Lehx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/cyclops/processing/OfflineOmnistereoStitcher"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lekn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lehx;ZDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lejw;

    invoke-static {v0}, Lekj;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejw;

    iput-object v0, p0, Lekn;->b:Lejw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lekn;->c:Z

    iput-object p1, p0, Lekn;->g:Lehx;

    iput-boolean p2, p0, Lekn;->d:Z

    iput-wide p3, p0, Lekn;->e:D

    iput-wide p5, p0, Lekn;->f:D

    return-void
.end method
