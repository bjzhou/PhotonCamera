.class public final Ldju;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static final b:Lkaf;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ldjm;

.field public final e:Lnmi;

.field public final f:Ldjq;

.field public final g:Lgwf;

.field public final h:Lhkv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/PhotoItemFactory"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldju;->a:Lnak;

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    sput-object v0, Ldju;->b:Lkaf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldjm;Ldjq;Lgwf;Lhkv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnmh;->a:Lnmh;

    iput-object v0, p0, Ldju;->e:Lnmi;

    iput-object p1, p0, Ldju;->c:Landroid/content/Context;

    iput-object p2, p0, Ldju;->d:Ldjm;

    iput-object p3, p0, Ldju;->f:Ldjq;

    iput-object p4, p0, Ldju;->g:Lgwf;

    iput-object p5, p0, Ldju;->h:Lhkv;

    return-void
.end method
