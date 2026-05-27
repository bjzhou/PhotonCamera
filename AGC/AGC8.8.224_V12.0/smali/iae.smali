.class Liae;
.super Liad;


# instance fields
.field final synthetic b:Liaj;


# direct methods
.method public constructor <init>(Liaj;)V
    .locals 0

    iput-object p1, p0, Liae;->b:Liaj;

    invoke-direct {p0}, Liad;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Liae;->b:Liaj;

    iget-object v0, v0, Liaj;->g:Liaq;

    invoke-interface {v0}, Liaq;->c()V

    iget-object v0, p0, Liae;->b:Liaj;

    iget-object v0, v0, Liaj;->h:Liaq;

    invoke-interface {v0}, Liaq;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Liae;->b:Liaj;

    iget-object v0, v0, Liaj;->g:Liaq;

    invoke-interface {v0}, Liaq;->d()V

    iget-object v0, p0, Liae;->b:Liaj;

    iget-object v0, v0, Liaj;->h:Liaq;

    invoke-interface {v0}, Liaq;->d()V

    return-void
.end method
