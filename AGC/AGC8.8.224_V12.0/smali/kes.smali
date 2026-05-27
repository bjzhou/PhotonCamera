.class final Lkes;
.super Lkfg;


# instance fields
.field final synthetic a:Lkex;

.field final synthetic b:Lkeb;


# direct methods
.method public constructor <init>(Lkex;Lkeb;)V
    .locals 0

    iput-object p1, p0, Lkes;->a:Lkex;

    iput-object p2, p0, Lkes;->b:Lkeb;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bj()V
    .locals 2

    iget-object v0, p0, Lkes;->a:Lkex;

    iget-object v1, p0, Lkes;->b:Lkeb;

    invoke-interface {v0, v1}, Lkex;->a(Lkeb;)V

    return-void
.end method

.method public final bk()V
    .locals 2

    iget-object v0, p0, Lkes;->a:Lkex;

    iget-object v1, p0, Lkes;->b:Lkeb;

    invoke-interface {v0, v1}, Lkex;->a(Lkeb;)V

    return-void
.end method
