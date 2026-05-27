.class final Lhen;
.super Lhfl;


# instance fields
.field final synthetic a:Lhes;


# direct methods
.method public constructor <init>(Lhes;)V
    .locals 0

    iput-object p1, p0, Lhen;->a:Lhes;

    invoke-direct {p0}, Lhfl;-><init>()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 2

    iget-object v0, p0, Lhen;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhen;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
