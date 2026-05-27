.class Lkotlin/collections/GroupingKt__GroupingJVMKt;
.super Ljava/lang/Object;
.source "GroupingJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupingJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n+ 2 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n143#2:53\n80#2,4:54\n85#2:59\n1#3:58\n1851#4,2:60\n*S KotlinDebug\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n*L\n22#1:53\n22#1:54,4\n22#1:59\n48#1:60,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0000\u001a0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u0005H\u0007\u001aZ\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\t\"\u0004\u0008\u0002\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u00072\u001e\u0010\n\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u000c\u0012\u0004\u0012\u0002H\u00080\u000bH\u0081\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "eachCount",
        "",
        "K",
        "",
        "T",
        "Lkotlin/collections/Grouping;",
        "mapValuesInPlace",
        "",
        "R",
        "V",
        "f",
        "Lkotlin/Function1;",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x31
    xs = "kotlin/collections/GroupingKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;
    .locals 20
    .param p0, "$this$eachCount"    # Lkotlin/collections/Grouping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .local v0, "destination$iv":Ljava/util/Map;
    move-object/from16 v2, p0

    .local v2, "$this$foldTo$iv":Lkotlin/collections/Grouping;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$f$foldTo":I
    move-object v4, v2

    .local v4, "$this$aggregateTo$iv$iv":Lkotlin/collections/Grouping;
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$f$aggregateTo":I
    invoke-interface {v4}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 55
    .local v7, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v7}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 56
    .local v8, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 57
    .local v9, "accumulator$iv$iv":Ljava/lang/Object;
    if-nez v9, :cond_0

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    move-object v12, v9

    .local v12, "acc$iv":Ljava/lang/Object;
    move-object v13, v8

    .local v13, "key$iv":Ljava/lang/Object;
    move-object v14, v7

    .local v11, "first$iv":Z
    .local v14, "e$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 53
    .local v15, "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    if-eqz v11, :cond_1

    const/16 v16, 0x0

    .line 23
    .local v16, "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$1":I
    new-instance v17, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .end local v16    # "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$1":I
    goto :goto_2

    :cond_1
    move-object/from16 v17, v12

    :goto_2
    move-object/from16 v10, v17

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .local v10, "acc":Lkotlin/jvm/internal/Ref$IntRef;
    const/16 v17, 0x0

    .line 24
    .local v17, "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$2":I
    move-object/from16 v18, v10

    .line 58
    .local v18, "$this$eachCount_u24lambda_u2d2_u24lambda_u2d1":Lkotlin/jvm/internal/Ref$IntRef;
    const/16 v19, 0x0

    .line 24
    .local v19, "$i$a$-apply-GroupingKt__GroupingJVMKt$eachCount$2$1":I
    move-object/from16 v1, v18

    move-object/from16 v18, v2

    .end local v2    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .local v1, "$this$eachCount_u24lambda_u2d2_u24lambda_u2d1":Lkotlin/jvm/internal/Ref$IntRef;
    .local v18, "$this$foldTo$iv":Lkotlin/collections/Grouping;
    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v1    # "$this$eachCount_u24lambda_u2d2_u24lambda_u2d1":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "acc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "first$iv":Z
    .end local v12    # "acc$iv":Ljava/lang/Object;
    .end local v13    # "key$iv":Ljava/lang/Object;
    .end local v14    # "e$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    .end local v17    # "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$2":I
    .end local v19    # "$i$a$-apply-GroupingKt__GroupingJVMKt$eachCount$2$1":I
    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    goto :goto_0

    .line 59
    .end local v7    # "e$iv$iv":Ljava/lang/Object;
    .end local v8    # "key$iv$iv":Ljava/lang/Object;
    .end local v9    # "accumulator$iv$iv":Ljava/lang/Object;
    .end local v18    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .restart local v2    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    :cond_2
    move-object/from16 v18, v2

    .line 53
    .end local v2    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .end local v4    # "$this$aggregateTo$iv$iv":Lkotlin/collections/Grouping;
    .end local v5    # "$i$f$aggregateTo":I
    .restart local v18    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    nop

    .line 25
    .end local v0    # "destination$iv":Ljava/util/Map;
    .end local v3    # "$i$f$foldTo":I
    .end local v18    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace$lambda-4, R of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace$lambda-4>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 58
    nop

    .local v2, "it":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .line 25
    .local v4, "$i$a$-mapValuesInPlace-GroupingKt__GroupingJVMKt$eachCount$3":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v2    # "it":Ljava/util/Map$Entry;
    .end local v4    # "$i$a$-mapValuesInPlace-GroupingKt__GroupingJVMKt$eachCount$3":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final mapValuesInPlace(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 8
    .param p0, "$this$mapValuesInPlace"    # Ljava/util/Map;
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;+TR;>;)",
            "Ljava/util/Map<",
            "TK;TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "it":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 49
    .local v5, "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    const-string v6, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace$lambda-4, R of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace$lambda-4>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Ljava/util/Map$Entry;
    .end local v5    # "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    goto :goto_0

    .line 61
    :cond_0
    nop

    .line 51
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
