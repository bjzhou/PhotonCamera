.class final Loqm;
.super Loqo;


# instance fields
.field final synthetic a:Loqq;

.field private final c:Looz;


# direct methods
.method public constructor <init>(Loqq;JLooz;)V
    .locals 0

    iput-object p1, p0, Loqm;->a:Loqq;

    invoke-direct {p0, p2, p3}, Loqo;-><init>(J)V

    iput-object p4, p0, Loqm;->c:Looz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Loqm;->c:Looz;

    iget-object v1, p0, Loqm;->a:Loqq;

    sget-object v2, Lojk;->a:Lojk;

    invoke-interface {v0, v1, v2}, Looz;->c(Lopq;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Loqo;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loqm;->c:Looz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
