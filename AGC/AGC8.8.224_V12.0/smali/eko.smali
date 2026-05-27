.class public final Leko;
.super Ljava/lang/Object;

# interfaces
.implements Lejw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZDD)Lejv;
    .locals 8

    new-instance v7, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;-><init>(Ljava/lang/String;ZDD)V

    return-object v7
.end method
