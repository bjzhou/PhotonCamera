.class public final synthetic Lcjj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lnph;


# direct methods
.method public synthetic constructor <init>(Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjj;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcjj;->a:Lnph;

    sget-object p2, Lcjp;->b:Lcjp;

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
