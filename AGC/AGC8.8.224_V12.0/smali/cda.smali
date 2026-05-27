.class public final Lcda;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ldhi;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/aaa/util/SmartAfRegionProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcda;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcda;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcda;->d:I

    const/4 v0, -0x3

    iput v0, p0, Lcda;->e:I

    iput-object p1, p0, Lcda;->b:Ldhi;

    return-void
.end method
