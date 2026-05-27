.class final Lhuf;
.super Lhta;


# instance fields
.field final synthetic a:Lhug;


# direct methods
.method public constructor <init>(Lhug;)V
    .locals 0

    iput-object p1, p0, Lhuf;->a:Lhug;

    invoke-direct {p0}, Lhta;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhuf;->a:Lhug;

    iget-object v0, v0, Lhug;->k:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhuf;->a:Lhug;

    iget-object v1, v0, Lhug;->k:Lhiu;

    iget-object v0, v0, Lhug;->l:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
