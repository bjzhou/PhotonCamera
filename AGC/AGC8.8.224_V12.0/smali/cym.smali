.class Lcym;
.super Lcys;


# instance fields
.field final synthetic b:Lcyp;


# direct methods
.method public constructor <init>(Lcyp;)V
    .locals 0

    iput-object p1, p0, Lcym;->b:Lcyp;

    invoke-direct {p0}, Lcys;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcym;->b:Lcyp;

    iget-object v0, v0, Lcyp;->j:Ldfa;

    invoke-virtual {v0}, Ldfa;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcym;->b:Lcyp;

    invoke-virtual {v0}, Lcyp;->k()V

    return-void
.end method

.method public final bx()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcym;->b:Lcyp;

    iput-object p0, v0, Lcyp;->i:Lcys;

    return-void
.end method
