.class public final Leyu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ldhi;

.field public final c:Lhzh;

.field public d:Lfxf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lenslite/LinkPostCaptureFeatureController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leyu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;Lhzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leyu;->b:Ldhi;

    iput-object p2, p0, Leyu;->c:Lhzh;

    return-void
.end method
