.class public final Lcvq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljuf;

.field public final c:Lnph;

.field public final d:Ljve;

.field public final e:Lfzb;

.field public final f:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/onecamcorder/OneCamcorderCallbacksSetup"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcvq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcvr;Lfzb;Ljuf;Lnph;Ljve;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvq;->f:Lcvr;

    iput-object p2, p0, Lcvq;->e:Lfzb;

    iput-object p3, p0, Lcvq;->b:Ljuf;

    iput-object p4, p0, Lcvq;->c:Lnph;

    iput-object p5, p0, Lcvq;->d:Ljve;

    return-void
.end method
