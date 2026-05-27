.class Leqs;
.super Leqo;


# instance fields
.field final synthetic b:Leqt;


# direct methods
.method public constructor <init>(Leqt;)V
    .locals 0

    iput-object p1, p0, Leqs;->b:Leqt;

    invoke-direct {p0}, Leqo;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Leqs;->b:Leqt;

    iget-object v0, v0, Leqt;->e:Liff;

    invoke-interface {v0}, Liff;->F()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Leqs;->b:Leqt;

    iget-object v0, v0, Leqt;->j:Litm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Leqs;->b:Leqt;

    iget-object v0, v0, Leqt;->j:Litm;

    invoke-interface {v0}, Litm;->p()V

    return-void
.end method
