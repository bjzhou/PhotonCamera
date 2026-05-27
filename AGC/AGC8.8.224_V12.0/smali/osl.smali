.class final Losl;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.channels.AbstractChannel"
    c = "AbstractChannel.kt"
    d = "receiveCatching-JP2dKIU"
    e = {
        0x279
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Losm;

.field c:I


# direct methods
.method public constructor <init>(Losm;Loku;)V
    .locals 0

    iput-object p1, p0, Losl;->b:Losm;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Losl;->a:Ljava/lang/Object;

    iget p1, p0, Losl;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Losl;->c:I

    iget-object p1, p0, Losl;->b:Losm;

    invoke-virtual {p1, p0}, Losm;->c(Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lolc;->a:Lolc;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Losw;->a(Ljava/lang/Object;)Losw;

    move-result-object p1

    return-object p1
.end method
