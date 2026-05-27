.class final Lmvr;
.super Lnad;


# instance fields
.field private final a:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;I)V
    .locals 1

    invoke-virtual {p1}, Lmvv;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lnad;-><init>(II)V

    iput-object p1, p0, Lmvr;->a:Lmvv;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmvr;->a:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
