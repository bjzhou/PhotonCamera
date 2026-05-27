.class public final Lrj;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrj;->a:I

    iput-object p2, p0, Lrj;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lrj;->a:I

    invoke-static {v0}, Lsc;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
