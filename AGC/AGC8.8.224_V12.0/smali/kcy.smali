.class final Lkcy;
.super Lkos;


# instance fields
.field final synthetic a:Lkoo;

.field final synthetic b:Lkcz;


# direct methods
.method public constructor <init>(Lkcz;Lkoo;Lkoo;)V
    .locals 0

    iput-object p1, p0, Lkcy;->b:Lkcz;

    iput-object p3, p0, Lkcy;->a:Lkoo;

    invoke-direct {p0, p2}, Lkos;-><init>(Lkoo;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lkcy;->b:Lkcz;

    invoke-virtual {v0}, Lkco;->a()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkcy;->a:Lkoo;

    invoke-interface {v0}, Lkoo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Virtual Camera "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
