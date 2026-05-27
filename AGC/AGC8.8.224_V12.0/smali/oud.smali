.class public final Loud;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__EmittersKt"
    c = "Emitters.kt"
    d = "invokeSafely$FlowKt__EmittersKt"
    e = {
        0xd8
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 0

    invoke-direct {p0, p1}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Loud;->a:Ljava/lang/Object;

    iget p1, p0, Loud;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Loud;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lone;->o(Lotu;Lomp;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
