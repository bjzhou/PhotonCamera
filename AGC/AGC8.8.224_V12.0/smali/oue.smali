.class public final Loue;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1"
    c = "Emitters.kt"
    d = "collect"
    e = {
        0x72,
        0x79,
        0x80
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Louf;

.field d:Ljava/lang/Object;

.field e:Lotu;


# direct methods
.method public constructor <init>(Louf;Loku;)V
    .locals 0

    iput-object p1, p0, Loue;->c:Louf;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Loue;->a:Ljava/lang/Object;

    iget p1, p0, Loue;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Loue;->b:I

    iget-object p1, p0, Loue;->c:Louf;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Louf;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
