.class public abstract Lolm;
.super Loll;

# interfaces
.implements Lonc;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 0

    invoke-direct {p0, p1}, Loll;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 1

    const/4 v0, 0x2

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
    invoke-super {p0}, Loll;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
