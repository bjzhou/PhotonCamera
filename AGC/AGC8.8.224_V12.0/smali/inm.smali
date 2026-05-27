.class final Linm;
.super Linv;


# instance fields
.field final synthetic a:Linn;


# direct methods
.method public constructor <init>(Linn;)V
    .locals 0

    iput-object p1, p0, Linm;->a:Linn;

    invoke-direct {p0}, Linv;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Linm;->a:Linn;

    iget-object v0, v0, Linn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Linm;->a:Linn;

    iget-object v1, v0, Linn;->a:Lhiu;

    iget-object v0, v0, Linn;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
