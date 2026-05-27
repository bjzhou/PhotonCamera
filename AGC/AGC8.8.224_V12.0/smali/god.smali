.class public final synthetic Lgod;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;


# instance fields
.field public final synthetic a:Lgon;


# direct methods
.method public synthetic constructor <init>(Lgon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgod;->a:Lgon;

    return-void
.end method


# virtual methods
.method public final onImage(JLjava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lgod;->a:Lgon;

    instance-of p5, p3, Landroid/hardware/HardwareBuffer;

    invoke-static {p5}, Lmoz;->e(Z)V

    check-cast p3, Landroid/hardware/HardwareBuffer;

    invoke-static {p3}, Ligo;->j(Ljava/lang/Object;)Ligo;

    move-result-object v3

    invoke-static {p4}, Lnqz;->a(I)Lnqz;

    move-result-object v4

    move-wide v1, p1

    move-object v5, p6

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lgon;->a(JLigo;Lnqz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
