.class public final Loui;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2"
    c = "Errors.kt"
    d = "emit"
    e = {
        0x9e
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field final synthetic c:Lmcc;

.field public d:Lmcc;


# direct methods
.method public constructor <init>(Lmcc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Loui;->c:Lmcc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Loui;->a:Ljava/lang/Object;

    iget p1, p0, Loui;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Loui;->b:I

    iget-object p1, p0, Loui;->c:Lmcc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmcc;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
