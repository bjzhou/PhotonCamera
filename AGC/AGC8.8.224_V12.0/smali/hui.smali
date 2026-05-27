.class final Lhui;
.super Lhte;


# instance fields
.field final synthetic b:Lhtg;


# direct methods
.method public constructor <init>(Lhtg;)V
    .locals 0

    iput-object p1, p0, Lhui;->b:Lhtg;

    invoke-direct {p0, p1}, Lhte;-><init>(Lhtg;)V

    return-void
.end method


# virtual methods
.method public final b(Lfuz;Ljuf;)V
    .locals 1

    iget-object v0, p0, Lhui;->b:Lhtg;

    iget-object v0, v0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2}, Lhte;->b(Lfuz;Ljuf;)V

    iget-object p1, p0, Lhui;->b:Lhtg;

    iget-object p2, p1, Lhtg;->e:Lhiu;

    iget-object p1, p1, Lhtg;->g:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
