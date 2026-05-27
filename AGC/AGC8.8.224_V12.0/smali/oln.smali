.class public abstract Loln;
.super Lolh;

# interfaces
.implements Lonc;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILoku;)V
    .locals 0

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    iput p1, p0, Loln;->a:I

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 1

    iget v0, p0, Loln;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lolf;->m:Loku;

    if-nez v0, :cond_0

    invoke-static {p0}, Lonm;->c(Lonc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lolh;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
