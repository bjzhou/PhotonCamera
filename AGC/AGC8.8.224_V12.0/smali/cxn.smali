.class final Lcxn;
.super Lcyg;


# instance fields
.field final synthetic a:Lcyh;


# direct methods
.method public constructor <init>(Lcyh;)V
    .locals 0

    iput-object p1, p0, Lcxn;->a:Lcyh;

    invoke-direct {p0, p1}, Lcyg;-><init>(Lcyh;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcxn;->a:Lcyh;

    iget-object v0, v0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lcxn;->a:Lcyh;

    iget-object v1, v0, Lcyh;->c:Lhiu;

    iget-object v0, v0, Lcyh;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
