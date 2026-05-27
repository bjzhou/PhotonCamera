.class public final Lkdo;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkdo;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lkdo;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lkdo;->b:I

    iput p1, p0, Lkdo;->a:I

    return-void
.end method
