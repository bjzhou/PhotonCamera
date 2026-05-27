.class public Lonf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lonc;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lonf;->a:I

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 1

    iget v0, p0, Lonf;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget v0, Lonl;->a:I

    invoke-static {p0}, Lonm;->c(Lonc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
