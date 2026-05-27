.class public final Lkzk;
.super Lkyp;


# instance fields
.field private final a:Llaa;


# direct methods
.method public constructor <init>(Llaa;)V
    .locals 0

    invoke-direct {p0}, Lkyp;-><init>()V

    iput-object p1, p0, Lkzk;->a:Llaa;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkzd;

    iget-object v0, p0, Lkzk;->a:Llaa;

    invoke-virtual {v0, p1}, Llaa;->m(Lkzd;)V

    return-void
.end method
