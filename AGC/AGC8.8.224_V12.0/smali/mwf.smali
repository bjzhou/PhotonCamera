.class final Lmwf;
.super Lnac;


# instance fields
.field final a:Lnac;

.field final synthetic b:Lmwi;


# direct methods
.method public constructor <init>(Lmwi;)V
    .locals 0

    iput-object p1, p0, Lmwf;->b:Lmwi;

    invoke-direct {p0}, Lnac;-><init>()V

    iget-object p1, p1, Lmwi;->a:Lmwa;

    invoke-virtual {p1}, Lmwa;->r()Lmwn;

    move-result-object p1

    invoke-virtual {p1}, Lmwn;->cz()Lnac;

    move-result-object p1

    iput-object p1, p0, Lmwf;->a:Lnac;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lmwf;->a:Lnac;

    invoke-virtual {v0}, Lnac;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmwf;->a:Lnac;

    invoke-virtual {v0}, Lnac;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
