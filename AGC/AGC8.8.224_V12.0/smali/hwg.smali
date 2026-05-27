.class final Lhwg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lhwi;


# direct methods
.method public constructor <init>(Lhwi;)V
    .locals 0

    iput-object p1, p0, Lhwg;->a:Lhwi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lhwg;->a:Lhwi;

    iget v0, p1, Lhwi;->a:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lhwi;->b(ZI)V

    :cond_0
    return-void
.end method
