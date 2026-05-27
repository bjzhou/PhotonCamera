.class final Lmtv;
.super Lmtw;


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lmtw;-><init>()V

    iput p1, p0, Lmtv;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lmtv;->a:I

    return v0
.end method

.method public final b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtw;
    .locals 0

    return-object p0
.end method
