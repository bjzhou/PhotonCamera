.class public final Llal;
.super Ljava/lang/Object;

# interfaces
.implements Llad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Llal;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Norm8"

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Llal;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
