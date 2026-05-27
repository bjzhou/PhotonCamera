.class final Lcp;
.super Ljava/lang/Object;

# interfaces
.implements Lco;


# instance fields
.field final a:I

.field final synthetic b:Lcq;


# direct methods
.method public constructor <init>(Lcq;I)V
    .locals 0

    iput-object p1, p0, Lcp;->b:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcp;->a:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    iget-object v0, p0, Lcp;->b:Lcq;

    iget v1, p0, Lcp;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcq;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
