.class public final Ldhb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhj;

.field public static final b:Ldhj;

.field public static final c:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.dualev.singleKnob"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhb;->a:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.dualev.nightFactor"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->r()Ldhj;

    move-result-object v0

    sput-object v0, Ldhb;->b:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.dualev.limitUltrawide"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhb;->c:Ldhj;

    return-void
.end method

.method public static a(Ldhm;)V
    .locals 3

    sget-object v0, Ldhb;->a:Ldhj;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhb;->b:Ldhj;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Ldhm;->s(Ldhj;Z)V

    sget-object v0, Ldhb;->c:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    return-void
.end method
