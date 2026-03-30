.class public abstract Ltyp;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Lucw;


# direct methods
.method protected constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract d(I)Ljava/lang/Object;
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltyp;->d(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final bridge size()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Ltyp;->c()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
