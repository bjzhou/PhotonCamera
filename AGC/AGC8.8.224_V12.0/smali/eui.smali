.class final Leui;
.super Lifk;


# instance fields
.field final synthetic a:Lhwd;

.field final synthetic b:Leuj;


# direct methods
.method public constructor <init>(Leuj;Lhwd;)V
    .locals 0

    iput-object p1, p0, Leui;->b:Leuj;

    iput-object p2, p0, Leui;->a:Lhwd;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 1

    iget-object v0, p0, Leui;->b:Leuj;

    iget-object v0, v0, Leuj;->I:Lhke;

    invoke-virtual {v0}, Lhke;->f()V

    iget-object v0, p0, Leui;->a:Lhwd;

    invoke-virtual {v0}, Lhwd;->f()V

    return-void
.end method

.method public final onShutterButtonPressedStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Leui;->b:Leuj;

    iput-boolean p1, v0, Leuj;->J:Z

    return-void
.end method

.method public final onShutterTouchStart()V
    .locals 1

    iget-object v0, p0, Leui;->b:Leuj;

    iget-object v0, v0, Leuj;->I:Lhke;

    invoke-virtual {v0}, Lhke;->e()V

    return-void
.end method
