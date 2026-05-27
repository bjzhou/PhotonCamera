.class public final Lnwr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:Lnzl;


# direct methods
.method public constructor <init>(ILnzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnwr;->a:I

    iput-object p2, p0, Lnwr;->b:Lnzl;

    return-void
.end method


# virtual methods
.method public final a()Lnzm;
    .locals 1

    iget-object v0, p0, Lnwr;->b:Lnzl;

    iget-object v0, v0, Lnzl;->s:Lnzm;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lnwr;

    iget v0, p0, Lnwr;->a:I

    iget p1, p1, Lnwr;->a:I

    sub-int/2addr v0, p1

    return v0
.end method
