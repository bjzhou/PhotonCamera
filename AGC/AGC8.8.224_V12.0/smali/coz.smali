.class public final Lcoz;
.super Ljava/lang/Object;

# interfaces
.implements Ljzc;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ldns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/CamcorderDeviceCallbackImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcoz;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldns;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoz;->b:Ldns;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcoz;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "onMediaRecorderError"

    const/16 v2, 0x1a8

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lcoz;->b:Ldns;

    invoke-interface {v0}, Ldns;->i()V

    return-void
.end method
