.class public final Lccc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccc;->a:Loiw;

    iput-object p2, p0, Lccc;->b:Loiw;

    iput-object p3, p0, Lccc;->c:Loiw;

    iput-object p4, p0, Lccc;->d:Loiw;

    iput-object p5, p0, Lccc;->e:Loiw;

    iput-object p6, p0, Lccc;->f:Loiw;

    iput-object p7, p0, Lccc;->g:Loiw;

    iput-object p8, p0, Lccc;->h:Loiw;

    iput-object p9, p0, Lccc;->i:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lccb;
    .locals 11

    iget-object v1, p0, Lccc;->a:Loiw;

    iget-object v2, p0, Lccc;->b:Loiw;

    iget-object v3, p0, Lccc;->c:Loiw;

    iget-object v4, p0, Lccc;->d:Loiw;

    iget-object v5, p0, Lccc;->e:Loiw;

    iget-object v6, p0, Lccc;->f:Loiw;

    iget-object v7, p0, Lccc;->g:Loiw;

    iget-object v8, p0, Lccc;->h:Loiw;

    iget-object v9, p0, Lccc;->i:Loiw;

    new-instance v10, Lccb;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lccb;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v10
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lccc;->a()Lccb;

    move-result-object v0

    return-object v0
.end method
