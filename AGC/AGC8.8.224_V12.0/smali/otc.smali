.class public final Lotc;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.channels.ProduceKt"
    c = "Produce.kt"
    d = "awaitClose"
    e = {
        0x99
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lolz;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 0

    invoke-direct {p0, p1}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lotc;->a:Ljava/lang/Object;

    iget p1, p0, Lotc;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lotc;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lolp;->L(Lotd;Lolz;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
