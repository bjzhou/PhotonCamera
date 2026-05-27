.class public final Lopf;
.super Lorc;

# interfaces
.implements Lope;


# instance fields
.field public final a:Lopg;


# direct methods
.method public constructor <init>(Lopg;)V
    .locals 0

    invoke-direct {p0}, Lorc;-><init>()V

    iput-object p1, p0, Lopf;->a:Lopg;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lopf;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lopf;->a:Lopg;

    invoke-virtual {p0}, Lore;->e()Lori;

    move-result-object v0

    invoke-interface {p1, v0}, Lopg;->n(Lorp;)V

    return-void
.end method

.method public final c()Lora;
    .locals 1

    invoke-virtual {p0}, Lore;->e()Lori;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lore;->e()Lori;

    move-result-object v0

    invoke-virtual {v0, p1}, Lori;->F(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
