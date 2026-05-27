.class final Lehq;
.super Lejm;


# instance fields
.field final synthetic a:Lehs;


# direct methods
.method public constructor <init>(Lehs;)V
    .locals 0

    iput-object p1, p0, Lehq;->a:Lehs;

    invoke-direct {p0}, Lejm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lehq;->a:Lehs;

    iget-object v0, v0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lehq;->a:Lehs;

    iget-object v1, v0, Lehs;->a:Lhiu;

    iget-object v0, v0, Lehs;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
