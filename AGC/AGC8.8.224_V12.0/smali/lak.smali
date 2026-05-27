.class public abstract Llak;
.super Ljava/lang/Object;

# interfaces
.implements Llad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Llak;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
