.class public final Lhkz;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field final synthetic a:Lhlb;


# direct methods
.method public constructor <init>(Lhlb;)V
    .locals 0

    iput-object p1, p0, Lhkz;->a:Lhlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lbpj;

    :try_start_0
    iget-object v0, p0, Lhkz;->a:Lhlb;

    iget-object v0, v0, Lhlb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbpj;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p1, Lhlb;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "Purge cache failed."

    const/16 v1, 0xe88

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
